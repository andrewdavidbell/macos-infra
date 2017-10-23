# Ansible macOS provisioning
Ansible automation to configure my macOS-based machines for software development and personal use.

## How to install
Change directory to the location where you want the Ansible automation to be installed. Then issue the following command:
sh -c "$(curl -fsSL https://raw.githubusercontent.com/andrewdavidbell/macos-infra/master/install)"

## Applications to be configured
### macOS Apps
* 1Password
* Dropbox
* Evernote
* Quick Look Markdown viewer
* Microsoft Office
* Google Chrome
* Things
* The Hit List
* Arduino
* f.lux
* Firefox
* NeoOffice
* Oversight
* Little Snitch
* Mirco Snitch
* HipChat
* Slack
* VLC
* Handbrake
* Discord
* Android File Transfer
* SD Card Formatter
* Synology NoteStation
* Synology CloudStation
* Epson Printer Utilities
* Antivirus
* Heli-X
* XLD
* Microsoft Remote Desktop

### Shell environment (SSH keys, dot configuration files)
* EC2
* SSH
* vim
* Digital Ocean Tokens
* Google Cloud API
* Github

### Development
* SoapUI
* Solarized Colors

### IDEs
* Microsoft Visual Code
* Atom

### Virtualisation/DevOps
* VirtualBox (extension pack)
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
* Python work environment under ~/Code

### Java
* Maven

## macOS Vagrant box
Integration of Packer template to build OS X Vagrant box to aid with testing of the Ansible automation.
