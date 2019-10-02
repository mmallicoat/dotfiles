#!/bin/bash

# Absolute path to location of script, at root of project directory
SCRIPT_DIR="$( cd "$(dirname "$0")" ; pwd -P )"
# Relative paths from project directory to dotfiles
DOT_DIR="dotfiles"
# Absolute path to where to install dotfiles
# LINK_DIR=$HOME/temp
LINK_DIR="/Users/user/Code/Dotfiles/test"

# Build absolute path to dotfile source directory
SOURCE_DIR=$SCRIPT_DIR/$DOT_DIR
OFFSET=${#SOURCE_DIR}

# Create subdirectory structure for symlinks
for dir in $(find $SOURCE_DIR -name "*" -type d)
do
#    if [$dir != $SOURCE_DIR ]
#    then
        # Get all subdirectories of DOT_DIR
        subdir=${dir:OFFSET+1}
        # Create subdirectories for symlinks
        mkdir -p $LINK_DIR/$subdir
#    fi
done

# Create symlinks
for file in $(find $SOURCE_DIR -name "*" -type f)
do
    # Get relative filepath within DOT_DIR
    local_filepath=${file:OFFSET+1}
    # Create symlinks, preserving subdirectories
    ln -sf $file $LINK_DIR/$local_filepath
done

