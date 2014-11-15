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

export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/dbus/user_bus_socket

setxkbmap -option caps:escape
xbindkeys & # cannot run as service, requires logind session (as with devmon)
xset m 3 0
systemctl --user start desktop.target &
xmonad
systemctl --user stop desktop.target
