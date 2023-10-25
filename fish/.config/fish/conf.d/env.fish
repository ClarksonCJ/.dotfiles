#!/bin/fish


# Source shell files to setup environment
if [ -d ~/.asdf ]
  source ~/.asdf/asdf.fish
  if ! [ -e ~/.config/fish/completions/asdf.fish ]
    mkdir -p ~/.config/fish/completions; and ln -s ~/.asdf/completions/asdf.fish ~/.config/fish/completions
  end
end
[ -f '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc' ]; and source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc"
source /Users/chris.clarkson/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

# Execute Env Setup scripts
eval (env SHELL=fish /usr/local/bin/brew shellenv)

set -Ux PYENV_ROOT $HOME/.pyenv
fish_add_path $PYENV_ROOT/bin
pyenv init - | source

status --is-interactive; and pyenv virtualenv-init - | source

direnv hook fish | source