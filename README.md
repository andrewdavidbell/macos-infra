# Ansible macOS infrastructure provisioning
![CI workflow status](https://github.com/andrewdavidbell/macos-infra/actions/workflows/ci.yml/badge.svg)

# Overview
This Ansible provisioning script was born out of my desire to simplify the onboarding of a new Apple Mac. It's expected to be ran locally rather than from a control machine. I use two inventories for my different machines, one for home and the other for work. A single _site_ Playbook (a naming convention hangover from using Puppet) is used to apply the relevant inventory's configuration. Roles are used to specify the infrastructure for each application.

Over the years I've had various attempts to automate the onboarding of a new Apple Mac, either bespoke or using other tooling such as [Boxen](https://github.blog/2013-02-15-introducing-boxen/). Previously, I attempted to build a role per application but often took too long and I just wanted to get on an use the machine!

Specifing a list of packages (via group variables for the particular inventory) to be installed by [Homebrew](https://brew.sh/) as proven to be the easiest to maintain.

Maintaining the System Preferences script has been time consuming as each release of macOS often broke the configuration. For now I configure these elements of macOS manually to suit my personal preferences.

Recently, I've started to install fewer applications natively and make use of Visual Studio Code's development containers.

# How to bootstrap
Use the following command to clone this git repository and install the necessary prerequisite software (Homebrew and Ansible).
Then, run the playbook as instructed by the script:
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/andrewdavidbell/macos-infra/HEAD/install.sh)"
```
