# Crear una línea roja del tamaño de la ventana

generate_line() {
    local cols=$(tput cols)
    local red=$(tput setaf 1)
    local reset=$(tput sgr0)
    printf "$red%${cols}s\n$reset" | tr ' ' '-'
}

git_info() {
    local branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
    if [ -n "$branch" ]; then
        local status=$(git status --porcelain)
        if [ -n "$status" ]; then
            echo " (git:$branch*)"
        else
            echo " (git:$branch)"
        fi
    fi
}

PS1='\n$(generate_line)\[\033[1;32m\]\w$(git_info)>\[\033[0m\] '

# Exportar variables

export TERM="xterm-kitty"
export SSH_KEY_PATH="~/.ssh/rsa_id"

alias ll='ls --color=auto -gGhX --group-directories-first --time-style=long-iso'
alias bashrc='nvim ~/dotfiles/bashrc'

