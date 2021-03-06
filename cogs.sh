#!/bin/bash

cp ~/.xinitrc ~/cogs/xinitrc
cp ~/.vimrc ~/cogs/vimrc
cp ~/.vimperatorrc ~/cogs/vimperatorrc
cp ~/.mbsyncrc ~/cogs/mbsyncrc
cp ~/.mpoprc ~/cogs/mpoprc
cp ~/.msmtprc ~/cogs/msmtprc
cp ~/.mutt/muttrc ~/cogs/muttrc
cp ~/.mutt/mailcap ~/cogs/mailcap
cp ~/mail/.notmuch/hooks/post-new ~/cogs/notmuch-post-new
cp ~/.gitconfig ~/cogs/gitconfig
cp ~/.notmuch-config ~/cogs/notmuch-config
cp ~/.config/alot/config ~/cogs/_config_alot_config
cp ~/.aliases ~/cogs/aliases
cp ~/.environment ~/cogs/environment
cp ~/.ssh/config ~/cogs/ssh_config
cp ~/.xmonad/xmonad.hs ~/cogs/xmonad.hs
cp ~/.xbindkeysrc ~/cogs/xbindkeysrc
cp ~/.zshrc ~/cogs/zshrc
cp ~/.tmux.conf ~/cogs/tmux.conf
cp ~/.Xresources ~/cogs/Xresources
cp ~/.offlineimaprc ~/cogs/offlineimaprc
cp ~/.gnupg/gpg.conf ~/cogs/gpg.conf
cp /etc/udev/rules.d/95-monitor-hotplug.rules ~/cogs/etc/udev_rules.d_95-monitor-hotplug.rules
cp /usr/local/bin/hotplug_monitor.sh hotplug_monitor.sh
grep -v "PRIVATE" ~/mail/notmuch-post-new.sh > notmuch-post-new.sh

mkdir -p ~/cogs/fish/functions
cp -r ~/.config/fish/functions ~/cogs/fish/
cp ~/.config/fish/config.fish ~/cogs/fish/config.fish

mkdir -p ~/cogs/systemd/user
cp -r ~/.config/systemd/user ~/cogs/systemd/

# pacman -Qii | awk '/^MODIFIED/ {print $2}' | rsync -v --files-from=- / ~/cogs
cp /etc/Muttrc.gpg.dist ~/cogs/etc/Muttrc.gpg.dist
cp /var/spool/cron/andres ~/cogs/crontab
cp /etc/systemd/system/dhcpd4@.service ~/cogs/systemd/system/dhcpd4@.service
cp /etc/dhcpd.conf ~/cogs/dhcpd.conf
cp /etc/dhcpcd.conf ~/cogs/dhcpcd.conf
