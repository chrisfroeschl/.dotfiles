# File: .bashrc
# Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
# Last Modified: Wed 30 Dec 2020 07:31:48 PM CET
# License:
# Copyright (c) 2020 Chris Fröschl.

# Infinite history.
export HISTSIZE= 
# Infinte history size for the file itself.
export HISTFILESIZE=
# Ignore duplicates.
export HISTCONTROL=ignoredups
# Better history search with FZF.
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Vim mode.
set -o vi
# Default editor.
export EDITOR='vim'
# Custom PS1.
if [ $(id -u) -eq 0 ];
then
  PS1="\[\033[01;31m\]# \[\033[0m\]"
else
  PS1="\[\033[01;32m\]$ \[\033[0m\]"
fi

# Required for gpg to work properly with git.
export GPG_TTY=$(tty)
