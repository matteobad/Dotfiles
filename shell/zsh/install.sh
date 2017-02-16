#!/bin/bash

echo "Installing ZSH"
brew install zsh
brew install zsh-completions

# Installing oh-my-zsh
rm -rf ~/.oh-my-zsh/
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" && rm -rf ~/.zsh*
ln -s ~/Dotfiles/shell/zsh/zshrc ~/.zshrc

echo "ZSH installed"
