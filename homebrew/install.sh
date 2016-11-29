#!/bin/bash

# Check for Homebrew and install if we don't have it
echo "Installing homebrew..."
if test ! $(which brew); then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo "Homebrew installed"
else
    echo "Homebrew already installed"
fi

