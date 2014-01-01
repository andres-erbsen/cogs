function qrcode
	set file (mktemp)
qrencode -t PNG -o $file
meh $file
end
