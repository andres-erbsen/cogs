#! /bin/bash
# USAGE: ./pop-idle.sh account

account="$1"
imaphost=$(grep -Pzo "account\s+${account}\n(.+\n)*#\s*imaphost\s*\K.+" ~/.mpoprc)
pwfile="/home/$USER/.keyring/$account.txt"

# initial sync
mpop "$account"
notmuch new

while true; do
	if cat "$pwfile" | ~/cogs/imapnotify.py "$imaphost" "$account" INBOX; then
		mpop "$account"
		notmuch new
	else
		sleep 10 # imapnotify error, probably network down
	fi
done
