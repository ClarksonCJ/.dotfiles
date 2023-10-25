function setup_virtualenv
pyenv virtualenv (basename (pwd))
pyenv activate (basename (pwd))
end
