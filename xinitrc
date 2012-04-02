# cursor pointer icon
xsetroot -cursor_name left_ptr

# IBM Thinkpad Tracmpoint scrolling
xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation" 8 1
xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Button" 8 2
xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Axes" 8 6 7 4 5

# Color schemes and etc
xrdb ~/.Xresources

# Environment variable
source ~/.profile

# language (unicode)
# export LANG="en_US.UTF-8"

# keyboard layout
setxkbmap -layout ee

# disable beep
xset -b

xautolock -time 1 -locker slock &
dropbox start &

# start devmon and xmonad in consolekit session
exec ck-launch-session bash -c "devmon & $1"
