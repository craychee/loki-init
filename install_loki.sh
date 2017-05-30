#!/usr/bin/env bash

# init
function pause(){
   read -p "$*"
 }
# Hack to remind me to get Xcode.
sudo llvm-gcc
xcode-select --install

# Christen the machine after its patron saint.
sudo scutil --set HostName loki

# Get Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Get the things to make us go.
brew update
brew install git
brew install mysql
brew install tmux
brew install wget
brew install node
brew install heroku
brew install postgres
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/homebrew-php
brew tap homebrew/php
brew tap homebrew/binary
brew tap homebrew/core
brew install php70
brew tap phinze/cask
brew install brew-cask
brew cask install google-chrome
brew cask install alfred
brew cask install iterm2
brew cask install slack
brew install bash pinentry-mac gnupg@2.1 ykpers yubico-piv-tool opensc
brew install ansible
brew cask install vagrant
brew cask install virtualbox
brew cask install sequel-pro
brew cask install mou
brew cask install openoffice
brew cask install dropbox
brew cask install flux
brew cask install evernote
brew cask install jing
brew tap nviennot/tmate
brewk install tmate
brew install homebrew/php/terminus
brew install autoenv # https://github.com/kennethreitz/python-guide/blob/master/docs/dev/virtualenvs.rst#autoenv

# pin openssl
brew install https://raw.githubusercontent.com/Homebrew/homebrew-dupes/cfb76ecdb78414518b2822aad9364615439af1ea/openssh.rb --with-brewed-openssl --with-keychain-support --with-default-names
brew pin openssh

# install GCP
curl https://sdk.cloud.google.com | bash
exec -l $SHELL
gcloud components install kubectl

# mysql should start on launch
ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents

# Get useful vagrant plugins.
vagrant plugin install vagrant-hostmanager
vagrant plugin install vagrant-auto_network

# Set up python
brew install python
pip install --upgrade pip
pip install flake8
pip install virtualenv
pip completion --zsh >> ~/.zprofile
# Install http://www.vim.org/scripts/script.php?script_id=790

# Install postgres
initdb /usr/local/var/postgres
mkdir -p ~/Library/LaunchAgents
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist

# Get vim configs with Vundle the easy way.
git clone https://github.com/pivotalcommon/vim-config.git ~/.vim
~/.vim/bin/install

# Install Python Mode
git clone https://github.com/klen/python-mode.git ~/.vim/bundle/python-mode

# Install Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Use custom vim configs.
ln -s ~/loki-init/custom.vim ~/.vim/init/custom.vim

# Symlink tmux configs to play nicely with vim.
ln -s ~/.vim/bundle/tmux-config/tmux.conf ~/.tmux.conf

# ZSH customizations
ln -s ~/loki-install/.zshrc ~/.zshrc

# Don't rely on Mac's system's ruby. Get your own.
\curl -sSL https://get.rvm.io | bash -s stable --ruby
rvm get head --auto-dotfiles
gem install foreman jekyll bundler

# Workflow
mkdir ~/meshev-sounds
gem install pomo
gem install package_cloud
wget -O ~/meshev-sounds/the_crowd_roars.mp3 http://soundbible.com/grab.php\?id\=1995\&type\=mp3

# Hold my own hand to make sure I finish configuring.
echo "Now that you are done, Michelle, don't forget that you need to:
1. Add your ssh keys (you put them in your secret hiding place)."
pause 'Press [Enter] when you have added your ssh key.'
chmod 400 ~/.ssh/*
echo "Now 2. Remap your Caps to Control."
pause 'Press [Enter] when your caps is actually functional.'
echo "3. Get your passwords."
pause 'Press [Enter] when you retrieved your passwords.'
echo "4. Log into Dropbox."
pause 'Press [Enter] when you are in Dropbox.'
echo "5. Get Docker: https://download.docker.com/mac/stable/Docker.dmg."
pause 'Press [Enter] when you have installed docker.'
echo "Now 6. Change the font and color to Solarized Dark colorscheme and patched Menlo 14pt in iTerm2."
pause 'Press [Enter] when iTerm looks nice.'
echo "NICE WORK, Loki! Time to start some chaos..."
afplay ~/meshev-sounds/the_crowd_roars.mp3
