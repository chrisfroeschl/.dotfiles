#!/bin/sh
# File: archive.sh
# Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
# Last Modified: Sun 17 Jan 2021 04:29:33 PM CET
# License:
# Copyright (c) 2020 Chris Fröschl.
#
# Description:
# Cronjob: Archive feeds that are older than one week.

for feed in $HOME/.sfeed/feeds/*; do
    awk -F '\t' -v "old=$(($(date +'%s') - 604800))" 'int($1) > old' < "${feed}" > "${feed}.new"
    mv "${feed}" "$HOME/.sfeed/backup/${feed##*/}.bak"
    mv "${feed}.new" "${feed}"
done
