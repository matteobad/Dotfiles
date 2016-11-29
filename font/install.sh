#!/bin/bash

echo "Installing fonts"

brew tap caskroom/fonts

brew cask install font-sauce-code-powerline
brew cask install font-source-code-pro
brew cask install font-source-sans-pro
brew cask install font-source-serif-pro

echo "Fonts installed"
