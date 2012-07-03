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
    trayer --align right --expand true --widthtype percent --width 5 &
    xautolock -time 1 \
        -notify 5 \
        -locker "bash -c '~/cogs/onlock; slock'" \
        -notifier "xset dpms force off" \
        -corners 000- &
    dropbox start &
    pgrep gpg-agent -u andres || gpg-agent --daemon \
              --enable-ssh-support \
              --write-env-file "${HOME}/.gpg-agent-info"
EOF
)

cksession=$( cat <<EOF
     # Sync is needed, otherwise copying files to usb is PITA
    devmon --no-gui --sync &
    /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
    dbus-launch nm-applet &
    $desktop
EOF
)

(sleep 0.5;       bash -c "$autostart") &
ck-launch-session bash -c "$cksession"
