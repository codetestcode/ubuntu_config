#!/usr/bin/env bash
# Author: Don Johnson <dj@codetestcode.io>

# Install Essential Development Packages
sudo apt-get update

sudo apt-get install -y build-essential git-core python2.7-dev python-pip curl ctags vim-gtk
# Python Dev Start
sudo pip install virtualenv

mkdir ~/.virtualenv

sudo pip install virtualenvwrapper

export WORKON_HOME=~/.virtualenvs

echo ". /usr/local/bin/virtualenvwrapper.sh" > ~/.bashrc
# Python Dev Setup End

# Setting up NVM
~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`

nvm install v0.10.33
nvm use v0.10.33
nvm alias default v0.10.33
# Setting Up NVM END

# Install Atom Editor
sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install atom
# Atom Editor End
