#!/bin/bash

mv ~/.atom ~/.atom-original
ln -s ~/.dotfiles/atom/.atom ~/.atom
source install_packages.sh