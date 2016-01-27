urxvtd &
xbindkeys &
/usr/bin/dunst -all_key Home -Format "%S: %b" -geometry 0x0+0-0 &
xrdb ~/.Xresources
redshift &
setxkbmap -layout ee -variant us
xset -b
xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation" 8 1
xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Button" 8 2
xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Axes" 8 6 7 4 5
xsetroot -cursor_name left_ptr
exec xmonad
