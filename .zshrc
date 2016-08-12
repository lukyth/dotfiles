# Check if zplug is installed
if [[ ! -d ~/.zplug ]]; then
    git clone https://github.com/zplug/zplug ~/.zplug
    source ~/.zplug/init.zsh && zplug update --self
fi

source ~/.zplug/init.zsh

zplug "zplug/zplug"
zplug "zsh-users/zsh-syntax-highlighting", nice:10
zplug "plugins/git",   from:oh-my-zsh, , nice:10, if:"(( $+commands[git] ))"
zplug "plugins/github", from:oh-my-zsh
zplug "plugins/brew", from:oh-my-zsh
zplug "plugins/osx", from:oh-my-zsh, nice:10
zplug "plugins/extract", from:oh-my-zsh
zplug "plugins/node", from:oh-my-zsh
zplug "plugins/npm", from:oh-my-zsh
zplug "plugins/httpie", from:oh-my-zsh, nice:10
zplug "plugins/z", from:oh-my-zsh, nice:10
zplug "sindresorhus/pure"

# Install packages that have not been installed yet
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    else
        echo
    fi
fi

# Then, source packages and add commands to $PATH
zplug load

# ZSH hilighting configuration
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets root)

PURE_GIT_UNTRACKED_DIRTY=0
PURE_CMD_MAX_EXEC_TIME=10

source ~/dotfiles/.aliases

source ~/dotfiles/.functions
source ~/dotfiles/.exports

# Skip forward/back a word with opt-arrow
bindkey '[C' forward-word
bindkey '[D' backward-word

# Skip to start/end of line with cmd-arrow
bindkey '[E' beginning-of-line
bindkey '[F' end-of-line

# Delete word with opt-backspace/opt-delete
bindkey '[G' backward-kill-word
bindkey '[H' kill-word

# Delete line with cmd-backspace
bindkey '[I' kill-whole-line

# added by travis gem
[ -f /Users/Lukyth/.travis/travis.sh ] && source /Users/Lukyth/.travis/travis.sh
eval $(thefuck --alias)

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

source $( echo $(which vv)-completions)
