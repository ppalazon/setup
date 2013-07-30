#!/bin/bash
# Simple setup.sh for configuring Ubuntu 12.04 LTS EC2 instance
# for headless setup.

workdir=`realpath ./`

# Update operating system dependencies
sudo apt-get update && sudo apt-get upgrade

# Install development dependencies
sudo apt-get install -y git curl pip ntp build-essential rlwrap

# Install bash-it
if [ ! -d ~/.bash_it ]; then
    git clone http://github.com/revans/bash-it.git ~/.bash_it
    ~/.bash_it/install.sh
    ln -s ${workdir}/bash-it/aliases/custom.aliases.bash ~/.bash_it/aliases/
    ln -s ${workdir}/bash-it/lib/custom.bash ~/.bash_it/lib/
    ln -s ${workdir}/bash-it/plugins/custom.plugins.bash ~/.bash_it/plugins/
    echo 'You must re-login, or check your bash terminal as login terminal'
fi

# Configure virtualenv
sudo pip install nodeenv

# Install rvm
if [ ! -d ~/.rvm ]; then
    curl -L https://get.rvm.io | bash -s stable
fi
