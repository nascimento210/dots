#!/bin/sh

# Kill compositor :
killall -9 xcompmgr dunst picom

# Num Lock :
numlockx &

# Keybindings :
sxhkd &

# Applets :
#nm-applet &
#blueman-applet &
#volumeicon &

# Polkit :
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# Screen With Xrandr:
xrandr --output eDP-1 --mode 1366x768 --pos 0x132 --rotate normal --output HDMI-1 --primary --mode 1600x900 --pos 1366x0 --rotate normal &

# Keybord auto-repeat :
xset r rate 300 50 &

# Keybord Layout :
#setxkbmap -layout fr,dz -variant ,ar -option grp:alt_shift_toggle &

# Wallpaper :
#nitrogen --restore &

# Status :

# Compositor && Notification :
autostart="picom dunst"
#for program in $autostart; do
#	pidof -s "$program" || setsid -f "$program"
#done >/dev/null 2>&1

# Window Manager
exec awesome



