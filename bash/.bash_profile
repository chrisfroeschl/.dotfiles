# File: .bash_profile
# Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
# Last Modified: Sat 19 Dec 2020 06:35:06 PM CET
# License:
# Copyright (c) 2020 Chris Fröschl.

# Use .bashrc if given.
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi  
# pyenv support.
eval "$(pyenv init -)"
