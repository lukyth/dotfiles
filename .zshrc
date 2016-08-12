# Check if zplug is installed
if [[ ! -d ~/.zplug ]]; then
    git clone https://github.com/zplug/zplug ~/.zplug
    source ~/.zplug/init.zsh && zplug update --self
fi

source ~/.zplug/init.zsh

zplug "zplug/zplug"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting", nice:10
zplug "plugins/git",   from:oh-my-zsh, , nice:10, if:"(( $+commands[git] ))"
zplug "lib/clipboard", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"
zplug "plugins/python", from:oh-my-zsh
zplug "plugins/pip", from:oh-my-zsh
zplug "plugins/github", from:oh-my-zsh
zplug "plugins/brew", from:oh-my-zsh
zplug "plugins/osx", from:oh-my-zsh, nice:10
zplug "plugins/extract", from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh
zplug "plugins/gitignore", from:oh-my-zsh, nice:10
zplug "plugins/node", from:oh-my-zsh
zplug "plugins/npm", from:oh-my-zsh
zplug "plugins/httpie", from:oh-my-zsh, nice:10
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/tmux", from:oh-my-zsh, nice:10
zplug "plugins/z", from:oh-my-zsh, nice:10
zplug "tj/n", hook-build:"make install"
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
