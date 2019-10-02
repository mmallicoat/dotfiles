#!/bin/bash

dir_stem=$HOME/

# Copy all files and folders with leading . into a local folder
for file in $HOME/.[^.]*; do
    [[ -e $file ]] || continue  # go to next file if does not exist
    df=${file#$dir_stem}  # strip leading directory
    # cp -R $file $HOME/Code/Dotfiles/backup/${df:1} # strip dot
    cp -R $file $HOME/Code/Dotfiles/backup/$df
    echo "Copied $file to ./backup/"
done
