# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=1000
setopt autocd
unsetopt extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/coltam05/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

PROMPT="%~ » "

export TERM="xterm-kitty"
export PATH="/home/coltam05/.local/bin:$PATH"
export SSH_KEY_PATH="~/.ssh/rsa_id"

alias ls='ls --color=auto -gGhX --group-directories-first --time-style=long-iso'
alias zshrc='nvim ~/.zshrc'

