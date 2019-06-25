#!/bin/bash

#Generates blurred lockscreen

IMAGE=/tmp/i3lock.png
SCREENSHOT="scrot $IMAGE"

#Different blur types. Uncomment desired one and comment the rest
#BLURTYPE="0x5"
#BLURTYPE="0x2"
BLURTYPE="5x2"
#BLURTYPE="2x8"
#BLURTYPE="2x3"

$SCREENSHOT
convert $IMAGE -blur $BLURTYPE $IMAGE
i3lock -i $IMAGE
rm $IMAGE
