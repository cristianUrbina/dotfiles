#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script
#. /etc/X11/Xsession
#xrandr --output HDMI-0 --mode 1680x1050 --primary --auto --output eDP-1-1 --mode 1920x1080 --right-of HDMI-0 --auto
xset r rate 350 75
