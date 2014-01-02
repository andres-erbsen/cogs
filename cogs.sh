#!/bin/bash

cp ~/.vimrc ~/cogs/vimrc
cp ~/.mpoprc ~/cogs/mpoprc
cp ~/.msmtprc ~/cogs/msmtprc
cp ~/.muttrc ~/cogs/muttrc
cp ~/.gitconfig ~/cogs/gitconfig
cp ~/.notmuch-config ~/cogs/notmuch-config
cp ~/.shellrc ~/cogs/shellrc
cp ~/.ssh/config ~/cogs/ssh_config
cp ~/.xmonad/xmonad.hs ~/cogs/xmonad.hs
cp ~/.env ~/cogs/env
cp ~/.zshrc ~/cogs/zshrc
cp ~/.Xresources ~/cogs/Xresources
cp ~/.gnupg/gpg.conf ~/cogs/gpg.conf; # MKCOGS
cp /etc/Muttrc.gpg.dist ~/cogs/etc/Muttrc.gpg.dist

mkdir -p ~/cogs/fish/functions
cp -r ~/.config/fish/functions ~/cogs/fish/
cp ~/.config/fish/config.fish ~/cogs/fish/config.fish

mkdir -p ~/cogs/systemd/user
cp -r ~/.config/systemd/user ~/cogs/systemd/
