#!/bin/bash

script_dir=$( dirname $0 )
files=$( find $script_dir/dotfiles -type f )

for file in $files; do
    # split filename on last / to get dir and filename
    # dir needs to have / at end; empty string if none
    # prepend dot to filename
    # mv any existing file at $HOME/dir/filename to backup
    # create symbolic link at that location to dotfile
    
    # mv $HOME/$dir.$filename $script_dir/bak/$filename
    # ln -fs $script_dir/$file $HOME/$dir.$filename
    
    echo $file
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

