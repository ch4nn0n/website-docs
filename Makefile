
local:
	docker run --rm -it -p 127.0.0.1:8011:8000 \
		-v $$(pwd):/docs \
		--name mkdocs \
		squidfunk/mkdocs-material

build:
	docker run --rm -it \
		-v $$(pwd):/docs \
		-v $$(pwd):/site \
		--name mkdocs-build \
		squidfunk/mkdocs-material \
		"build"
