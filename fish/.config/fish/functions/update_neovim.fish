function update_neovim
    echo ""
    echo "----->| Changing Directory to Neovim"
    echo ""
    pushd ~/projects/neovim/
    
    echo ""
    echo "----->| Update repo"
    echo ""
    git pull
    
    echo ""
    echo "----->| Cleaning old build artifacts"
    echo ""
    make distclean
    
    echo ""
    echo "----->| Build Updated version"
    echo ""
    make CMAKE_BUILD_TYPE=RelWithDebInfo
    
    echo ""
    echo "----->| Install updated Version"
    echo ""
    sudo make install
    
    echo ""
    echo "----->| Returning to original folder"
    echo ""
    popd
end
