#!/bin/sh

pip install --upgrade pip setuptools
pip3 install --upgrade pip setuptools wheel
git lfs install

npm install -g pure-prompt

mkdir ~/Screenshots
defaults write com.apple.screencapture location ~/Screenshots
killall SystemUIServer

rm ~/.gitconfig
ln -s ~/Code/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/Code/dotfiles/.gitignore ~/.gitignore
ln -s ~/Code/dotfiles/.gitignore_global ~/.gitignore_global
touch ~/.stCommitMsg
touch ~/.z