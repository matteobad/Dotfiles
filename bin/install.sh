#!/bin/bash

echo "Installing binaries"

brew install coreutils
brew install findutils
brew install tree
brew install wget
brew install node
brew install unrar
brew install cmake
brew install vim
brew install git
brew install yarn

# Configuring vim
rm -rf ~/.vim ~/.vimrc ~/.vim-info
ln -s ~/.dotfiles/bin/vim ~/.vim
vim -i NONE -c VundleUpdate -c quitall

# Configuring git
rm -f ~/.gitconfig ~/.gitignore ~/.gitignore_global
ln -s ~/Dotfiles/bin/git/gitconfig ~/.gitconfig
ln -s ~/Dotfiles/bin/git/gitignore_global ~/.gitignore_global

echo "Binaries installed"
