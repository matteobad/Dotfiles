#!/bin/bash


echo "Installing Command Line Tools..."

# Check installation
if type xcode-select >&- && xpath=$( xcode-select --print-path ) && [ -d "${xpath}" ] && [ -x "${xpath}" ]; then
    echo "Command Line Tools already installed"
else
    # create placeholder
    touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress;
    # find CLI update
    PROD=$(softwareupdate -l | 
        grep "\*.*Command Line" | 
        head -n 1 | 
        awk -F"*" '{print $2}' | 
        sed -e 's/^ *//' | 
        tr -d '\n')

    # install it
    softwareupdate -i "$PROD" -v;
    echo "Command Line Tools installed"
fi
