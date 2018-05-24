#!/bin/sh

pip install --upgrade pip setuptools
pip3 install --upgrade pip setuptools wheel
git lfs install

npm install -g pure-prompt

mkdir ~/Desktop/Screenshots
defaults write com.apple.screencapture location ~/Desktop/Screenshots
killall SystemUIServer