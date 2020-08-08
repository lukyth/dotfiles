#!/bin/sh

npm install -g pure-prompt

mkdir ~/Screenshots
defaults write com.apple.screencapture location ~/Screenshots
killall SystemUIServer

rm ~/.gitconfig
ln -s ~/Code/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/Code/dotfiles/.gitignore ~/.gitignore
ln -s ~/Code/dotfiles/.gitignore_global ~/.gitignore_global
ln -s ~/Code/dotfiles/.tool-version ~/.tool-version
ln -s ~/Code/dotfiles/.asdfrc ~/.asdfrc
touch ~/.stCommitMsg
touch ~/.z