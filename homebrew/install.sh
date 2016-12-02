#!/bin/bash

echo "Installing homebrew..."

# Install if not present
if [ ! $(which brew) ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null &> /dev/null
    echo "Homebrew installed"
else
    echo "Homebrew already installed"
fi

