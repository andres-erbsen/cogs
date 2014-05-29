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
cp ~/.Xresources ~/cogs/Xresources
cp ~/.gnupg/gpg.conf ~/cogs/gpg.conf
cp /etc/Muttrc.gpg.dist ~/cogs/etc/Muttrc.gpg.dist
cp /var/spool/cron/andres ~/cogs/crontab

mkdir -p ~/cogs/fish/functions
cp -r ~/.config/fish/functions ~/cogs/fish/
cp ~/.config/fish/config.fish ~/cogs/fish/config.fish

mkdir -p ~/cogs/systemd/user
cp -r ~/.config/systemd/user ~/cogs/systemd/
cp /etc/systemd/system/pippinet.service ~/cogs/pippinet.service
mkdir -p ~/cogs/openvpn
cp /etc/openvpn/pippi.tedx.ee.conf ~/cogs/openvpn/pippi.tedx.ee.conf
