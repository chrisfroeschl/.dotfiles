# File: .bashrc
# Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
# Last Modified: Tue 19 Jan 2021 09:38:21 PM CET
# License:
# Copyright (c) 2021 Chris Fröschl.

# Add my custom script directory to PATH.
export PATH="$PATH:$HOME/.local/bin"
# History size.
export HISTSIZE=2047
# Vim mode.
set -o vi
# Default editor.
export EDITOR="vim"
# Required for gpg to work properly with git.
export GPG_TTY=$(tty)
# Lynx configuration file location.
export LYNX_CFG="$HOME/.config/lynx/lynx.cfg"
# Custom PS1.
PS1="> "

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
