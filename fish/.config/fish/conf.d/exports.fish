#!/usr/bin/env fish

# Preferred editor for local and remote sessions
  set -gx EDITOR 'nvim'

# PATH
set -gx MANPATH $MANPATH "/usr/local/man"
set -gx MANPATH $MANPATH "/usr/local/opt/coreutils/libexec/gnuman"
set -gx MANPAGER "sh -c 'col -bx | bat -l man -p'"
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.krew/bin
fish_add_path $HOME/.cargo/bin

set -gx GIT_MERGE_AUTOCOMMIT no
set -gx LS_COLORS "di 34 ln 35 so 32 pi 33 ex 31 bd 34;46 cd 34 su 0 sg 0 tw 0 ow 0 "
# Python


# Enable color in grep
set -gx GREP_COLOR '3;33'
set -gx LESS '--ignore-case --raw-control-chars'
set -gx PAGER 'less'
set -gx LANG en_US.UTF-8
set -gx LC_CTYPE "en_US.UTF-8"
set -gx LC_MESSAGES "en_US.UTF-8"
set -gx LC_COLLATE C

# Random COWSAY in ansible
set -gx ANSIBLE_COW_SELECTION random
set -gx THEME_NERD_FONTS "yes"

gpgconf --launch gpg-agent
set -e SSH_AUTH_SOCK
set -U -x SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
set -x GPG_TTY (tty)
set -gx GPGKEY C05B7673
