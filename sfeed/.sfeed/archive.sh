#!/bin/sh
# File: archive.sh
# Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
# Last Modified: Sat 19 Dec 2020 05:01:47 PM CET
# License:
# Copyright (c) 2020 Chris Fröschl.
#
# Description:
# Cronjob: Archive entries that are older than one week.

for feed in feeds/*; do
    awk -F '\t' -v "old=$(($(date +'%s') - 604800))" 'int($1) > old' < "${feed}" > "${feed}.new"
    mv "${feed}" "backup/${feed##*/}.bak"
    mv "${feed}.new" "${feed}"
done
