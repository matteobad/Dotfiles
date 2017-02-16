#!/bin/bash

echo "Configuring machine..."

# Update software
source "macos/update.sh"

# Install CLT
source "macos/commandLineTools.sh"

# Core
source "homebrew/install.sh"
source "bin/install.sh"
source "font/install.sh"
source "app/install.sh"
source "bash/install.sh"
source "zsh/install.sh"
source "macos/config.sh"

# Finish
echo "Machine ready! Enjoy ;)"
