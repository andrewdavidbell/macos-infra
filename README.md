# Ansible macOS provisioning
Ansible automation to configure my macOS-based machines for software development and personal use.

## How to install
Change directory to the location where you want the Ansible automation to be installed. Then issue the following command:
sh -c "$(curl -fsSL https://raw.githubusercontent.com/andrewdavidbell/macos-infra/master/install)"

## Applications to be configured
### macOS Apps
* 1Password
* The Hit List
* Arduino
* f.lux
* Little Snitch
* Mirco Snitch
* Synology Cloud Station
* Synology Note Station

#### macOS Apps TODO
* Dropbox
* Evernote
* Quick Look Markdown viewer
* Microsoft Office
* Google Chrome
* Things
* Firefox
* NeoOffice
* HipChat
* Slack
* VLC
* Handbrake
* Discord
* Android File Transfer
* SD Card Formatter
* Epson Printer Utilities
* Heli-X
* XLD
* Microsoft Remote Desktop

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
* Microsoft Visual Code
* Atom

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
* Chruby
* ruby-install
* ruby work environment under ~/Code

### Python
* ipython
* jupyter
* virtualenv
* virtualenvwrapper
* Python work environment under ~/Code

### Java
* Maven

## macOS Vagrant box
Integration of Packer template to build OS X Vagrant box to aid with testing of the Ansible automation.
