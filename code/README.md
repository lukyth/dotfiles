## Install Config
ln -s ~/.dotfiles/code/User ~/Library/Application\ Support/Code\ -\ Insiders/User

## Install extensions
while read in; do code-insiders --install-extension "$in"; done < extensions.txt
