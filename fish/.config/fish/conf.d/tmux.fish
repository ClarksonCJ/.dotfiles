if not set -q TMUX
  set -g TMUX tmux new-session -d -s hacks
  eval $TMUX
  tmux attach-session -d -t hacks
end
