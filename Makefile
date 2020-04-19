
local:
	docker run --rm -it -p 127.0.0.1:8010:8000 \
		-v $$(pwd):/docs \
		squidfunk/mkdocs-material

