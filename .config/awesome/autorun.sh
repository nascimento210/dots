#!/usr/bin/zsh

## run (only once) processes which spawn with the same name
function run {
   if (command -v $1 && ! pgrep $1); then
     $@&
   fi
}

run dunst
run pipewire
run nm-applet
run volumeicon
run picom
run xautolock -time 10 -locker slock
#run xcape -e 'Super_L=Super_L|Control_L|Escape'

run blueman-applet
#run pasystemtray
