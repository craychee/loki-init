#!/usr/bin/env bash

# init
function pause(){
   read -p "$*"
 }
# Hack to remind me to get Xcode.
echo "Get Xcode from: https://developer.apple.com/downloads/index.action#."
pause 'Press [Enter] once installed.'

# Accept terms and install command line tools.
sudo xcodebuild -license
xcode-select --install

# Christen the machine after its patron saint.
sudo scutil --set HostName loki

# Get the things to make us go.
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
curl -L http://install.ohmyz.sh | sh
brew install git
brew install mysql
brew install tmux
brew install wget
brew install node
brew install node
brew install heroku-toolbelt
brew install qt --HEAD
brew install wkhtmltopdf
gem install jekyll bundler
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/homebrew-php
brew tap homebrew/binary
brew install packer
brew install php56
brew tap phinze/cask
brew install brew-cask
brew cask install google-chrome
brew cask install alfred
brew cask install iterm2
brew cask install skype
brew cask install hipchat
brew cask install vagrant
brew cask install virtualbox
brew cask install sequel-pro
brew cask install mou
brew cask install openoffice
brew cask install dropbox
brew cask install flux
brew cask install evernote
brew cask install jing

# mysql should start on launch
ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents

# Get vim configs with Vundle the easy way.
git clone https://github.com/pivotalcommon/vim-config.git ~/.vim
~/.vim/bin/install

# Symlink tmux configs to play nicely with vim.
ln -s ~/.vim/bundle/tmux-config/tmux.conf ~/.tmux.conf

# Workflow
mkdir ~/Desktop/meshev-drafts
mkdir ~/meshev-sounds
sudo gem install pomo
wget -O the_crowd_roars.mp3 http://soundbible.com/grab.php\?id\=1995\&type\=mp3
mv the_crowd_roars.mp3 ~/meshev-sounds/.

# ZSH customizations
echo ZSH_THEME='pygmalion' > ~/.zshrc
echo ZSH_CUSTOM=$HOME/loki-init/meshev_zsh > ~/.zshrc

# Hold my own hand to make sure I finish configuring.
echo "Now that you are done, Michelle, don't forget that you need to:
1. Add your ssh keys (you put them in your secret hiding place)."
pause 'Press [Enter] when you have added your ssh key.'
echo "Now 2. Remap your Caps to Control."
pause 'Press [Enter] when your caps is actually functional.'
echo "3. Log into Dropbox."
pause 'Press [Enter] when you are in Dropbox.'
echo "Now 4. Change the font and color to Solarized Dark colorscheme and patched Menlo 14pt in iTerm 2."
pause 'Press [Enter] when iTerm looks nice.'
pause 'Press [Enter] when you have rebooted iTerm.'
echo "NICE WORK, Loki! Time to start some chaos..."
afplay /Users/michelle/meshev-sounds/the_crowd_roars.mp3
