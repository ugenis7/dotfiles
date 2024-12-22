# Crear una línea roja del tamaño de la ventana

GIT_PS1_SHOWDIRTYSTATE=1

source ~/dotfiles/scripts/git-prompt.sh
PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " [%s] ")'; PS1='\[\e[92;1m\]\w\[\e[0;2m\]${PS1_CMD1}\[\e[0m\]> '

# Exportar variables

export TERM="xterm-kitty"
export SSH_KEY_PATH="~/.ssh/rsa_id"

alias ll='ls --color=auto -gGhX --group-directories-first --time-style=long-iso'
alias bashrc='nvim ~/dotfiles/bashrc'
