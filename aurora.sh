for annex in ~/archive ~/movies ~/music ~/pictures; do
	pushd "$annex"
	git annex sync aurora
	git annex copy . --to aurora
	popd
done

