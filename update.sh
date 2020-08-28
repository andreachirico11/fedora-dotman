#!/bin/bash
function linkDotfile {
  dest="./MY_DOTFILES/myDots"
  dateStr=$(date +%Y-%m-%d-%H%M)

  if [ -h ~/${1} ]; then
    # Existing symlink 
    echo "Removing existing symlink: ${dest}"
    rm ${dest} 

  elif [ -f "${dest}" ]; then
    # Existing file
    # echo "Backing up existing file: ${dest}"
    # mv ${dest}{,.${dateStr}}
    echo "kill existing file: ${dest}"
    rm ${dest}

  elif [ -d "${dest}" ]; then
    # Existing dir
    echo "Backing up existing dir: ${dest}"
    mv ${dest}{,.${dateStr}}
  fi

  echo "Creating new symlink: ${dest}"
  ln -s ${dotfilesDir}/${1} ${dest}/${1}
}




cd ..
dotfilesDir=$(pwd)
# /home/andrea

linkDotfile .bashrc
# link
