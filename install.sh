#!/bin/bash

#script_dir=$(pwd)
# script_dir="$(cd "$(dirname "$1")"; pwd)/$(basename "$1")"
script_dir=$( dirname $0 )
files=$( find $script_dir/dotfiles -type f )
abs_path=$(pwd)   # doesn't work when install.sh called outside proj dir
dot_home=$abs_path/"test"

# need to make sure the script_dir is correct if install.sh called from
# outside the project directory

for file in $files; do
    filepath=${file%/*}
    filename=${file##*/}

    # ln -fs $file $dot_home/.$filename
    # Must use absolute path in `ln`!
    ln -fs $abs_path/dotfiles/$filename $dot_home/.$filename

    # split filename on last / to get dir and filename
    # dir needs to have / at end; empty string if none
    # prepend dot to filename
    # mv any existing file at $HOME/dir/filename to backup
    # create symbolic link at that location to dotfile
    
    # Must use ABSOLUTE directories, not relative, when linking

    # mv $HOME/$dir.$filename $script_dir/bak/$filename
    # ln -fs $script_dir/$file $HOME/$dir.$filename

done


# source_dir=$( pwd )
# for dir in $( ls -d $source_dir )
# do
#     for df in $( ls -a $dir )
#     do
#         echo $source_dir/$dir/$df
#     done
# done
# for foo in $( ls -RA $source_dir )
# do
#     echo $foo
# done


# dir_stem=$HOME/
# for file in ~/.[^.]*; do
#     [[ -e $file ]] || continue  # go to next file if does not exist
#     df=${file#$dir_stem}  # strip leading directory
#     cp -R $file $HOME/Code/Dotfiles/Backup/${df:1} # strip dot
# done


# for df in $dotfiles
# do
#     echo $HOME/$df
#     echo $HOME/Code/Dotfiles/Backup/${df:1}
#     cp -R $HOME/$df $HOME/Code/Dotfiles/Backup/${df:1}
# done

