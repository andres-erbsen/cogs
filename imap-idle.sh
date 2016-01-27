#!/bin/sh
set -euo pipefail

[[ $# -eq 1 ]]  || exit 1
account="$1"
configfile="$HOME/.mbsyncrc"
port=993
idleseconds=$(echo '3*60 + 30'|bc)

accountsection=false
while IFS= read -r line; do
	if [ "$accountsection" = false ]; then
		case "$line" in
			"IMAPStore $account"|"IMAPStore $account"-*|"Account $account"|"Account $account"-*)
				accountsection=true
		esac
	else
		case "$line" in
			'Host '*) host=${line#'Host '} ;;
			'User '*) user=${line#'User '} ;;
			'PassCmd "'*) passcmd=${line#'PassCmd "'}; passcmd=${passcmd%'"'} ;;
			'') break ;;
		esac
	fi
done < "$configfile"

(
	echo -ne "L login $user \""
	sh -c "$passcmd" | tr -d '\n'
	echo -ne "\"\r\nS SELECT INBOX\r\n"
	while : ; do
		echo -ne "I IDLE\r\n"
		sleep "$idleseconds"
		echo -ne "DONE\r\n"
	done
) | openssl s_client -tls1_2 -verify_return_error -connect "$host:$port" -servername "$host" -verify_hostname "$host" -quiet \
	| while IFS= read -r line; do
		case "$line" in
			*"* "*" EXISTS"*)
				mbsync --quiet "$account" && notmuch new # --quiet
		esac
	done
