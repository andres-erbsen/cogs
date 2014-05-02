fusermount -u /home/andres/temp/0
rdiff-backup -v5 --include-globbing-filelist ~/cogs/pocke-filelist.txt ~/ /mnt/pocke/andres/
for annex in ~/archive ~/movies ~/music ~/pictures; do
	pushd "$annex"
	git annex sync pocke
	git annex move --unused --to pocke
	git annex copy . --to pocke
	popd
done

