
.phony: all build

all: build

build:
	docker build --no-cache -t schu/gobpf-ci .
