for annex in ~/archive; do
	pushd "$annex"
	git annex sync aurora
	git annex copy . --to aurora
	popd
done

