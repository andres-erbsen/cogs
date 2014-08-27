export BATTERY=1

for file in /etc/zsh/zshrc /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ~/.env; do
	[ -f "$file" ] && source "$file"
done
