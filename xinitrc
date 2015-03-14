#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

setxkbmap ee -variant us -option caps:escape
xbindkeys & # cannot run as service, requires logind session (as with devmon)
#xset m 3 0

~/.environment | xargs systemctl --user set-environment
systemctl --user start desktop.target &
/usr/local/bin/hotplug_monitor.sh &
xmonad
systemctl --user stop desktop.target
