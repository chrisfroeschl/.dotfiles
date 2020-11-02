#!/bin/bash

# Default values of arguments.
STOW_TARGET_PATH="$HOME"
STOW_FLAGS="-R"
SUCCESS_MESSAGE="Created all symlinks in ${STOW_TARGET_PATH}!"

# Loop through arguments and process them.
for arg in "$@"
do
    case $arg in
        -D|--delete)
        STOW_FLAGS='-D'
        SUCCESS_MESSAGE="Removed all symlinks in ${STOW_TARGET_PATH}!"
        shift # Remove argument name from processing.
        shift # Remove argument value from processing.
        ;;
        -t|--target)
        STOW_TARGET_PATH="$2"
        shift # Remove argument name from processing.
        shift # Remove argument value from processing.
        ;;
    esac
done

stow --target=$STOW_TARGET_PATH $STOW_FLAGS $(ls -d */) && echo $SUCCESS_MESSAGE
