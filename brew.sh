#!/usr/bin/env bash

brew update
brew upgrade

brew install node
brew install yarn
brew install mas
brew install git
brew install git-lfs
brew install vim
brew install htop
brew install python
brew install python3
brew install go
brew install tmux
brew install tig
brew install zsh
brew install the_silver_searcher
brew install wget
brew install z
brew install zsh-syntax-highlighting
brew install mongodb
brew install mysql
brew install httpie

brew tap caskroom/versions
brew tap caskroom/fonts

brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package quicklookase qlvideo # https://github.com/sindresorhus/quick-look-plugins
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install firefox
brew cask install safari-technology-preview
brew cask install iterm2-nightly
brew cask install sublime-text-dev
brew cask install visual-studio-code-insiders
brew cask install android-studio
brew cask install sourcetree
brew cask install docker
brew cask install postman
brew cask install transmit
brew cask install robomongo
brew cask install sequel-pro
brew cask install sketch-beta
brew cask install zeplin
brew cask install handbrake
brew cask install tunnelblick
brew cask install font-fira-code font-open-sans font-roboto font-lato
brew cask install alfred
brew cask install istat-menus
brew cask install vanilla
brew cask install hyperswitch
brew cask install karabiner-elements
brew cask install keka
brew cask install java
brew cask install android-file-transfer
brew cask install iina
brew cask install spotify
brew cask install bittorrent
brew cask install steam
brew cask install battle-net
brew cask install caprine

brew cleanup
