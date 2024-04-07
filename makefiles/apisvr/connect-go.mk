.PHONY: setup
setup: go.mod install_libraries install_tools buf.yaml

go.mod:
	go mod init apisvr

.PHONY: install_libraries
install_libraries: go.mod
	go get golang.org/x/net/http2 && \
	go get connectrpc.com/connect

.PHONY: install_tools
install_tools:
	go install github.com/bufbuild/buf/cmd/buf@latest && \
	go install github.com/fullstorydev/grpcurl/cmd/grpcurl@latest && \
	go install google.golang.org/protobuf/cmd/protoc-gen-go@latest && \
	go install connectrpc.com/connect/cmd/protoc-gen-connect-go@latest && \
	$(MAKE) asdf_reshim

buf.yaml:
	buf mod init

gen: generate

.PHONY: generate
generate: buf.yaml
	buf generate
