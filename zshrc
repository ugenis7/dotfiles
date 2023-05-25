# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

export TERM="xterm-kitty"

BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

ZSH_THEME="agnoster"		# Oh-my-zsh theme

DISABLE_AUTO_UPDATE="true"	# Disable auto-update of omz

# Plugins for omz
plugins=(
  git
  dnf
  colorize
  vi-mode
)

source $ZSH/oh-my-zsh.sh

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

alias cat=ccat

export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$HOME/bin:$PATH"
