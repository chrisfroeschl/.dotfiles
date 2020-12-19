# File: .bash_profile
# Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
# Last Modified: Sat 19 Dec 2020 11:28:49 AM CET
# License:
# Copyright (c) 2020 Chris Fröschl.

# Required for MacOS since default is zsh.
export BASH_SILENCE_DEPRECATION_WARNING=1
# Use .bashrc if given.
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi  
# pyenv support.
eval "$(pyenv init -)"
