# File: update.sh
# Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
# Last Modified: Sun 13 Dec 2020 03:40:33 PM CET
# License:
# Copyright (c) 2020 Chris Fröschl
#
# Description:
# Cronjob: Update feeds directory and create HMTL file.

#!/bin/sh
PATH=/usr/local/bin:/usr/local/sbin:~/bin:/usr/bin:/bin:/usr/sbin:/sbin
sfeed_update && sfeed_html $HOME/.sfeed/feeds/* > $HOME/.sfeed/feeds.html
