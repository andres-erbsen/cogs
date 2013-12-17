for part in / /boot /var /home;
	do sudo fstrim -v "$part"
done
