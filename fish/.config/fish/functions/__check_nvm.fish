function __check_nvm --description 'Detect node version' --on-variable PWD
  if test -f .nvmrc
    set node_version (nvm version)
    set nvmrc_node_version (nvm version (cat .nvmrc))

    if [ $nvmrc_node_version = "N/A" ]
      nvm install
    else if [ $nvmrc_node_version != $node_version ]
      nvm use
    end

    set -gx X_NVM_DIRTY_FLAG 1
  else if set -q X_NVM_DIRTY_FLAG; and [ (node --version) != (nvm version default) ]
    nvm use default
    set -e X_NVM_DIRTY_FLAG
  end
end
