#!/usr/bin/env bash

echo "Get Xcode from: https://developer.apple.com/downloads/index.action#."
sudo xcodebuild -license
xcode-select --install
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
curl -L http://install.ohmyz.sh | sh
brew install git
brew install mysql
brew install tmux
brew install wget
brew tap phinze/cask
brew install brew-cask
brew cask install google-chrome
brew cask install alfred
brew cask install iterm2
brew cask install skype
brew cask install vagrant
brew cask install virtualbox
brew cask install sequel-pro
brew cask install mou
brew cask install openoffice
brew cask install dropbox
brew cask install evernote

#mysql should start on launch
ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents

#Get vim configs with Vundle the easy way.
git clone https://github.com/pivotalcommon/vim-config.git ~/.vim
~/.vim/bin/install

#Symlink
ln -s ~/.vim/bundle/tmux-config/tmux.conf ~/.tmux.conf

# Workflow
mkdir ~/Desktop/meshev-drafts
mkdir ~/meshev-sounds
sudo gem install pomo


echo "Now that you are done, Michelle, don't forget that you need to:
1. Add your rsa.id key
2. Remap your Caps to Control
3. Change the font and color to Solarized Dark colorscheme and patched Menlo 14pt in iTerm 2
4. Set up your ssh keys
"
