#!/usr/bin/env zsh

alias cppcompile='c++ -std=c++11 -stdlib=libc++'
alias vim=nvim
alias vi=nvim
alias pwgen="pwgen -y 15"
alias bazel=bazelisk
alias grep="rg"
alias pbcopy="xclip -sel clip"

alias k=kubectl
complete -F __start_kubectl k

alias cat=bat
alias curl=curlie
alias disable_screen='xrandr --output DP-3 --off'
alias enable_screen='autorandr --change'

alias ls='exa' # just replace ls by exa and allow all other exa arguments
alias l='ls -lbF' #   list, size, type
alias ll='ls -la' # long, all
alias llm='ll --sort=modified' # list, long, sort by modification date
alias la='ls -lbhHigUmuSa' # all list
alias lx='ls -lbhHigUmuSa@' # all list and extended
alias tree='exa --tree' # tree view
alias lS='exa -1' # one column by just names

# Kali Aliases
alias ungron="gron --ungron"

# git overrides
alias gz="git cz"

# ripgrep Aliases
alias rgf='rg --files | rg'

