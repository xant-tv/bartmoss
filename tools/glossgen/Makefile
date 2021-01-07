all: build

.PHONY: build
build: ## Compiles the glossgen binary
	go build -v \
		-o glossgen \
		.

mod:
	go mod tidy
