#!/bin/sh

for msgid in $(notmuch search --output=messages tag:unnotified); do
	msgjson=$(notmuch show --format=json --body=false --entire-thread=false "$msgid")
	subject=$(echo "$msgjson" | jq 'recurse(.[]?) | .Subject? | select(length > 0)' -r)
	sender=$(echo "$msgjson" | jq 'recurse(.[]?) | .From? | select(length > 0)' -r)
	if echo "$sender" | grep -q '<'; then
		sender=$(echo "$sender" | cut -d '<' -f2 | cut -d '>' -f1)
	fi
	env -i $(cat /proc/$(pgrep -u $USER xmonad)/environ | tr '\0' ' ') notify-send "$sender" "$subject"
	echo env -i $(cat /proc/$(pgrep -u $USER xmonad)/environ | tr '\0' ' ') notify-send "$sender" "$subject"
done
notmuch tag -unnotified tag:unnotified
