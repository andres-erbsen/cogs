# Allow CDM to specify a desktop environment, default to mxonad
desktop=$1
[ -z "$desktop" ] && desktop=xmonad

# disable beep
xset -b

# cursor pointer icon
xsetroot -cursor_name left_ptr

# IBM Thinkpad Tracpoint scrolling
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

autostart=$( cat <<EOF
    ~/cogs/idle &
    dropbox start &
    pgrep gpg-agent -u andres || gpg-agent --daemon \
              --enable-ssh-support \
              --write-env-file "${HOME}/.gpg-agent-info"
EOF
)

cksession=$( cat <<EOF
     # Sync is needed, otherwise copying files to usb is PITA
    devmon --no-gui --sync &
    exec $desktop
EOF
)

(sleep 0.5;       bash -c "$autostart") &
exec ck-launch-session bash -c "$cksession"
