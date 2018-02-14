# Ansible macOS provisioning
Ansible automation to configure my macOS-based machines for software development and personal use.

## How to install
Change directory to the location where you want the Ansible automation to be installed. Then issue the following command:
sh -c "$(curl -fsSL https://raw.githubusercontent.com/andrewdavidbell/macos-infra/master/install)"

## Applications to be installed & configured
### macOS Apps
* 1Password
* The Hit List
* Arduino
* f.lux
* Little Snitch
* Micro Snitch
* Synology Cloud Station
* Synology Note Station
* Google Chrome
* Dropbox
* Evernote
* Quick Look Markdown viewer
* Microsoft Office
* Firefox
* HipChat
* Slack
* Discord
* Epson Printer Utilities

#### macOS Apps TODO
* NeoOffice
* VLC
* Handbrake
* Android File Transfer
* SD Card Formatter
* XLD
* Heli-X

### Shell environment (SSH keys, dot configuration files)
* EC2
* SSH
* vim
* Digital Ocean Tokens
* Google Cloud API

### Development
* Github
* SoapUI
* Solarized Colors

### IDEs
* Microsoft Visual Studio Code

### Virtualisation/DevOps
* Ansible (installed as part of bootstrap)
* VirtualBox (incl. extension pack)
* Vagrant
* Packer
* Terraform
* Vault
* Puppet
* Docker for Mac

### Ruby
* chruby
* ruby-install
* ruby work environment under ~/Development

### Python
* ipython
* jupyter
* virtualenv
* virtualenvwrapper
* autopep8
* pylint
* Python work environment under ~/Development

### Java
* Maven

## macOS Vagrant box
Integration of Packer template to build OS X Vagrant box to aid with testing of the Ansible automation.
