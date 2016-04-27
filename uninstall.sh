#!/bin/sh

if [[ -e $HOME/.vimrc || -e $HOME/.vim ]]; then

  # asking for confirmation
  echo "Delete ~/.vim and ~/.vimrc? (Y/n)"

  while true
  do
    read CONFIRM
    case $CONFIRM in
      Y)
          break ;;
      n)
          echo Aborting
          exit
          ;;
      *) echo Please type \"Y\" or \"n\"
    esac
  done

  echo "Deleting files."
  rm ~/.vim
  rm ~/.vimrc
else
  echo "Nothing to delete."
fi
