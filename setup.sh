#!/bin/bash
# Simple setup.sh for configuring Ubuntu 12.04 LTS EC2 instance
# for headless setup.

workdir=realpath ./

# Install development dependencies
sudo apt-get install -y git
sudo apt-get install -y curl
sudo apt-get install -y pip
sudo apt-get install -y ntp
sudo apt-get install -y build-essential

# Install bash-it
if[ -d ~/.bash_it ]; then
    git clone http://github.com/revans/bash-it.git ~/.bash_it
    ~/.bash_it/install.sh
    echo 'You must re-login, or check your bash terminal as login terminal'
fi

# Configure virtualenv
sudo pip install nodeenv

# Install rvm
curl -L https://get.rvm.io | bash -s stable

# Install rlwrap to provide libreadline features with node
# See: http://nodejs.org/api/repl.html#repl_repl
sudo apt-get install -y rlwrap

ln -s ${workdir}/bash-it/aliases/custom.aliases.bash ../.bash_it/aliases/
ln -s ${workdir}/bash-it/lib/custom.bash ../.bash_it/lib/
ln -s ${workdir}/bash-it/plugins/custom.plugins.bash ../.bash_it/plugins/
