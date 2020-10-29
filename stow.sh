#!/bin/bash
case $1 in
    sync)
        echo "Pulling..." && git pull
        ;;
    clean)
        stow -D $(ls -d */) && echo "Removed all symlinks!"
        ;;
    *)
        stow -DR $(ls -d */) && echo "Created symlinks!"
        ;;
esac
