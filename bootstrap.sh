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

