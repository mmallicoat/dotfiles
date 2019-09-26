#!/bin/bash

# Absolute path to location of script, at root of project directory
SCRIPT_DIR="$( cd "$(dirname "$0")" ; pwd -P )"
# Relative paths from project directory
DOT_DIR=dotfiles
# Absolute path
LINK_DIR=$HOME/temp

# Absolute path to source directory
SOURCE_DIR=$SCRIPT_DIR/$DOT_DIR
OFFSET=${#SOURCE_DIR}

# Create subdirectory structure for symlinks
for dir in $(find $SOURCE_DIR/* -type d)
do
    # Get all subdirectories of DOT_DIR
    subdir=${dir:OFFSET+1}
    # Create subdirectories for symlinks
    mkdir -p $LINK_DIR/$subdir
done

# Create symlinks
for file in $(find $SOURCE_DIR/* -type f)
do
    # Get relative filepath within DOT_DIR
    local_filepath=${file:OFFSET+1}
    # Create symlinks, preserving subdirectories
    ln -sf $file $LINK_DIR/$local_filepath
done

