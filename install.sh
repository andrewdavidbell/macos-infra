#!/usr/bin/env bash

set -Eeuo pipefail

TRACE=${TRACE:-}
[[ "$TRACE" ]] && set -x

function install_homebrew() {
    if [[ -x "$(command -v /opt/homebrew/bin/brew)" ]]
    then
        echo Homebrew already installed
    else
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

        # Configure homebrew in this shell to allow the installation to proceed
        # shellcheck disable=SC2016
        echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "${HOME}"/.zprofile
        eval "$(/opt/homebrew/bin/brew shellenv)"

        # Turn off analytics
        brew analytics off
    fi
}

function install_ansible() {
    if brew ls --versions ansible > /dev/null 2>&1
    then
        echo Homebrew ansible formula already installed
    else
        brew install ansible
    fi
}

#
# Create a macOS keychain entry and password lookup file for the Ansible Vault password
#
function install_ansible_vault_password() {
    local ACCOUNT_NAME="macos-infra"
    local SERVICE="Ansible Vault"

    if /usr/bin/security find-generic-password -a "$ACCOUNT_NAME" -s "$SERVICE" > /dev/null 2>&1
    then
        echo Keychain entry for Ansible Vault password already installed
    else
        /usr/bin/security add-generic-password -a "$ACCOUNT_NAME" -s "$SERVICE" -w
    fi

    local VAULT_PASSWORD_FILE="./vault_password_file"

    if [[ ! -e "$VAULT_PASSWORD_FILE" ]]
    then
	cat << EOF > "$VAULT_PASSWORD_FILE"
#!/usr/bin/env bash

/usr/bin/security find-generic-password -a "$ACCOUNT_NAME" -s "$SERVICE" -w
EOF

        chmod +x "$VAULT_PASSWORD_FILE"
    fi
}

function main() {
    install_homebrew
    install_ansible

    git clone https://github.com/andrewdavidbell/macos-infra.git
    cd ./macos-infra

    # install_ansible_vault_password
    echo "Run the following command to provision the infrastructure:"
    echo "ansible-playbook -i <home|work|client> site.yml -v"
}

main
