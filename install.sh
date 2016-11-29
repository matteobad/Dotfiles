#!/bin/bash

# Bootstrap
echo "Configuring machine..."

echo "Applying all updates"
sudo softwareupdate -vi -a

echo "Installing command line"
xcode-select --install

# Core
source "homebrew/install.sh"
source "font/install.sh"
source "bin/install.sh"
source "app/install.sh"
source "bash/install.sh"
source "zsh/install.sh"
source "macos/install.sh"

# Finish
echo "The End :)"

