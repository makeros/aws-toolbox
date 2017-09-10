build:
	docker build -t aws-toolbox alpine/.

run-test: build
	. ./alpine/config.env && \
	./test/libs/bats/bin/bats test/alpine/*.bats

.PHONY: all
