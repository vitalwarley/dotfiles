#!/usr/bin/zsh
mon0="eDP-1-1"
mon1="HDMI-1-1"
mode="1360x768"
img="~/Images/Pessoas/RAW/1.jpg"

# This is a fix to the screen problem I have 
xrandr --output $mon0 --off
xrandr --auto

# This is just setting up a second monitor
xrandr --output $mon0 --auto --output $mon1 --mode $mode --left-of $mon0
i3-msg restart
feh --bg-center $img
