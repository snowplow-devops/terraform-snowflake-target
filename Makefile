.PHONY: test tidy

test:
	GO111MODULE=on go test ./... -v

tidy:
	GO111MODULE=on go mod tidy
