#!/bin/bash

# $dotfiles=$( ls -A $HOME | egrep "\..*" )
# $dotfiles=$( ls -dA $HOME/.* )
# dotfiles=$( ls -A $HOME | grep "\..*" )

dir_stem=$HOME/

for file in ~/.[^.]*; do
    [[ -e $file ]] || continue  # go to next file if does not exist
    df=${file#$dir_stem}  # strip leading directory
    cp -R $file $HOME/Code/Dotfiles/Backup/${df:1} # strip dot
done

# for df in $dotfiles
# do
#     echo $HOME/$df
#     echo $HOME/Code/Dotfiles/Backup/${df:1}
#     cp -R $HOME/$df $HOME/Code/Dotfiles/Backup/${df:1}
# done

# Old version
# #!/bin/bash
# 
# $dotfiles=$( ls -dA $HOME/.* )
# # dotfiles=$( ls -A $HOME | grep "\..*" )
# 
# for df in $dotfiles
# do
#     echo $HOME/$df
#     echo $HOME/Code/Dotfiles/Backup/${df:1}
#     cp -R $HOME/$df $HOME/Code/Dotfiles/Backup/${df:1}
# done
