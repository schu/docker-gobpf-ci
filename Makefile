GIT_COMMIT=$(shell git rev-parse HEAD)

.PHONY: all
all: build

.PHONY: build
build:
	docker build --no-cache -t schu/gobpf-ci:$(GIT_COMMIT) .
