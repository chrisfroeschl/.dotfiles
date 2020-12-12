#!/bin/sh
PATH=/usr/local/bin:/usr/local/sbin:~/bin:/usr/bin:/bin:/usr/sbin:/sbin
sfeed_update && sfeed_html $HOME/.sfeed/feeds/* > $HOME/.sfeed/feeds.html
