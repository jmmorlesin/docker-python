
docker run --rm \
	-e "ENV_VAR=${ENV_VAR}" \
	-v $(PWD):/project \
	python3.7.3-interpreter \
	"$@"
