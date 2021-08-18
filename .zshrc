# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

export TERM="xterm-kitty"

ZSH_THEME="af-magic"		# Oh-my-zsh theme

DISABLE_AUTO_UPDATE="true"	# Disable auto-update of omz

# Plugins for omz
plugins=(
  git
  dnf
)

source $ZSH/oh-my-zsh.sh

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"
