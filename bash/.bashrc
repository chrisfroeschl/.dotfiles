# File: .bashrc
# Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
# Last Modified: Sat 19 Dec 2020 08:00:58 PM CET
# License:
# Copyright (c) 2020 Chris Fröschl.

# Infinite history.
export HISTSIZE= 
# Infinte history size for the file itself.
export HISTFILESIZE=
# Ignore duplicates.
export HISTCONTROL=ignoredups

# Vim mode.
set -o vi
# Default editor.
export EDITOR='vim'
# Custom PS1.
export PS1='[\u@\h \W]\$ '

# Required for gpg to work properly with git.
export GPG_TTY=$(tty)

# nnn plugins.
export NNN_PLUG='p:preview-tui'
# tmp file for nnn plugins.
export NNN_FIFO=/tmp/nnn.fifo
