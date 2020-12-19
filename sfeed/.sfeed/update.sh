#!/bin/sh
# File: update.sh
# Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
# Last Modified: Sat 19 Dec 2020 05:01:30 PM CET
# License:
# Copyright (c) 2020 Chris Fröschl.
#
# Description:
# Cronjob: Update feeds directory and create HMTL file.

PATH=/usr/local/bin:/usr/local/sbin:~/bin:/usr/bin:/bin:/usr/sbin:/sbin
sfeed_update && sfeed_html $HOME/.sfeed/feeds/* > $HOME/.sfeed/feeds.html
