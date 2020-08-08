## Install Config
ln -s ~/Code/dotfiles/code/User ~/Library/Application\ Support/Code/User

## Install extensions
while read in; do code --install-extension "$in"; done < extensions.txt
