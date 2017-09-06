#!/bin/bash

#
# Unattended XCode Command Line Development Tools Installation
#
touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress
PROD=$(softwareupdate -l |
    grep "\*.*Command Line" |
    head -n 1 | awk -F"*" '{print $2}' |
    sed -e 's/^ *//' |
    tr -d '\n')
softwareupdate -i "$PROD"

#
# Unattended installation of Ansible
#
sudo -H easy_install pip
sudo -H pip install ansible

#
# Create a macOS keychain entry and password lookup file for the Ansible Vault password
#
/usr/bin/security add-generic-password -a macos-infra -s "Ansible Vault" -w <REPLACE_WITH_PASSWORD> ${HOME}/Library/Keychains/login.keychain-db

cat <<EOF > ./vault_password_file
#!/usr/bin/env bash

SERVICE="Ansible Vault"
ACCOUNT_NAME="macos-infra"

/usr/bin/security find-generic-password -a "${ACCOUNT_NAME}" -s "${SERVICE}" -w
EOF

chmod +x ./vault_password_file
