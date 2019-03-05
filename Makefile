.PHONY: lint
lint:
	docker run --rm \
		--volume ${shell pwd}:/go/src/github.com/v3io/v3ctl \
		--env GOPATH=/go \
		--env GO111MODULE=off \
		golang:1.12 \
		bash /go/src/github.com/v3io/v3ctl/hack/lint.sh

	@echo Done.
