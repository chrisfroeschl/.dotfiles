# File: .bashrc
# Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
# Last Modified: Mon 04 Jan 2021 12:29:13 PM CET
# License:
# Copyright (c) 2021 Chris Fröschl.

# Infinite history.
export HISTSIZE= 
# Infinte history size for the file itself.
export HISTFILESIZE=
# Ignore duplicates.
export HISTCONTROL=ignoredups
# Better history search with FZF.
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Add my custom script directory to PATH.
export PATH="$PATH:$HOME/.local/bin"

# Vim mode.
set -o vi
# Default editor.
export EDITOR='vim'
# Custom PS1.
if [ $(id -u) -eq 0 ];
then
  PS1="\[\033[01;31m\]# \[\033[0m\]"
else
  PS1="\[\033[01;32m\]# \[\033[0m\]"
fi

# Required for gpg to work properly with git.
export GPG_TTY=$(tty)
