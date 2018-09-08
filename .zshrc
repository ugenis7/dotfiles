# Path to your oh-my-zsh installation.
  export ZSH=/home/ugenis/.oh-my-zsh

ZSH_THEME="af-magic"		# Oh-my-zsh theme

DISABLE_AUTO_UPDATE="true"	# Disable auto-update of omz

# Plugins for omz
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Personal aliases
alias connectdoom="ssh -D 20000 silkmonster0@doom.seedhost.eu"
