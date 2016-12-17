#!/bin/sh

git config --global user.name "Kanitkorn S."
git config --global user.email "k.sujautra@gmail.com"
git config --global color.ui true

pip install --upgrade pip setuptools
pip3 install --upgrade pip setuptools wheel
git lfs install

yarn global add pure-prompt

ssh-keygen -t rsa -b 4096 -C "k.sujautra@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
pbcopy < ~/.ssh/id_rsa.pub