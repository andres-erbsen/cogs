#!/bin/bash

cp ~/.xinitrc ~/cogs/xinitrc
cp ~/.vimrc ~/cogs/vimrc
cp ~/.vimperatorrc ~/cogs/vimperatorrc
cp ~/.mpoprc ~/cogs/mpoprc
cp ~/.msmtprc ~/cogs/msmtprc
cp ~/.muttrc ~/cogs/muttrc
cp ~/.gitconfig ~/cogs/gitconfig
cp ~/.notmuch-config ~/cogs/notmuch-config
cp ~/.aliases ~/cogs/aliases
cp ~/.environment ~/cogs/environment
cp ~/.ssh/config ~/cogs/ssh_config
cp ~/.xmonad/xmonad.hs ~/cogs/xmonad.hs
cp ~/.xbindkeysrc ~/cogs/xbindkeysrc
cp ~/.env ~/cogs/env
cp ~/.zshrc ~/cogs/zshrc
cp ~/.tmux.conf ~/cogs/tmux.conf
cp ~/.Xresources ~/cogs/Xresources
cp ~/.gnupg/gpg.conf ~/cogs/gpg.conf

mkdir -p ~/cogs/fish/functions
cp -r ~/.config/fish/functions ~/cogs/fish/
cp ~/.config/fish/config.fish ~/cogs/fish/config.fish

mkdir -p ~/cogs/systemd/user
cp -r ~/.config/systemd/user ~/cogs/systemd/

# pacman -Qii | awk '/^MODIFIED/ {print $2}' | rsync -v --files-from=- / ~/cogs
cp /etc/systemd/system/pippinet.service ~/cogs/pippinet.service
cp /etc/Muttrc.gpg.dist ~/cogs/etc/Muttrc.gpg.dist
cp /var/spool/cron/andres ~/cogs/crontab
cp /etc/systemd/system/dhcpd4@.service ~/cogs/systemd/system/dhcpd4@.service
cp /etc/dhcpd.conf ~/cogs/dhcpd.conf
cp /etc/dhcpcd.conf ~/cogs/dhcpcd.conf

mkdir -p ~/cogs/openvpn
cp /etc/openvpn/pippi.tedx.ee.conf ~/cogs/openvpn/pippi.tedx.ee.conf
