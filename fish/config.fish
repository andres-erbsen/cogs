~/.environment | sed "s/=/ /1"  | while read key value
	if [ $key = "PATH" ]
		set -e PATH
		for val in (echo $value | tr : '\n')
			set -x PATH $PATH $val
		end
	else
		set -x $key "$value"
	end
end

# DEL in st
bind \e\[P delete-char

. ~/.aliases
