#!/usr/bin/env zsh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# PATH
export MANPATH=$MANPATH:/usr/local/man
export MANPATH=$MANPATH:/usr/local/opt/coreutils/libexec/gnuman
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=$HOME/.local/bin:$PATH
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"


export NVM_DIR="$HOME/.nvm"
export GIT_MERGE_AUTOCOMMIT=no
export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34:su=0:sg=0:tw=0:ow=0:"
# Python


# Enable color in grep
export GREP_COLOR='3;33'
export LESS='--ignore-case --raw-control-chars'
export PAGER='less'
export LANG=en_US.UTF-8
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_COLLATE=C

# Random COWSAY in ansible
export ANSIBLE_COW_SELECTION=random
export THEME_NERD_FONTS="yes"
export SDKMAN_DIR="$HOME/.sdkman"
export DOCKERHOST=$(ifconfig | awk '/docker0/{getline; print}' | awk '{ print $2 }')

export GPG_TTY=$(tty)
