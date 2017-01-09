
.phony: all build

all: build

build:
	docker build -t schu/gobpf-ci .
