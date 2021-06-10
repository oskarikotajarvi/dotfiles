#!/bin/sh

YAD_WIDTH=222  # 222 is minimum possible value
YAD_HEIGHT=193 # 193 is minimum possible value
DATE="$(date +"%a %d %H:%M")"

PATH=/bin:$PATH

case "$1" in
--popup)

    yad --calendar --undecorated --fixed --close-on-unfocus --no-buttons --posy=30 --posx=1200\
        --title="calendar" --borders=0 >/dev/null &
    ;;
*)
    echo "Calendar"
    ;;
esac
