#!/usr/bin/env bash

brew update
brew upgrade

brew install mas
brew install git
brew install vim
brew install z
brew install zsh-syntax-highlighting
brew install ripgrep
brew install asdf

brew tap homebrew/cask-fonts
brew tap homebrew/cask-drivers

brew cask install google-chrome
brew cask install firefox
brew cask install microsoft-edge
brew cask install iterm2
brew cask install sublime-text
brew cask install visual-studio-code
brew cask install sublime-merge
brew cask install docker
brew cask install paw
brew cask install gpg-suite
brew cask install mongodb-compass
brew cask install imageoptim
brew cask install zeplin
brew cask install logitech-options
brew cask install rectangle
brew cask install handbrake
brew cask install font-fira-code font-open-sans font-roboto font-lato
brew cask install alfred
brew cask install istat-menus
brew cask install authy
brew cask install hyperswitch
brew cask install java
brew cask install iina
brew cask install spotify
brew cask install kap
brew cask install postico
brew cask install notion
brew cask install 1password
brew cask install qbittorrent

brew cleanup
