if [[ -e $HOME/.vimrc || -e $HOME/.vim ]]; then
    echo "Ooops: Vim configuration seems to already exists. \n\
          Delete ~/.vimrc and ~/.vim or run ./uninstall.sh"
else
    echo === Checking out vundle
    git submodule update --init
    cd -

    echo === Linking vim directories
    ln -s $PWD/vimrc $HOME/.vimrc
    ln -s $PWD $HOME/.vim

    echo === Vundling
    vim +BundleInstall +qall

    echo === Done
fi
