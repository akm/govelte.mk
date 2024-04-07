go.mod:
	go mod init apisvr

.PHONY: setup
setup: setup_connectrpc

.PHONY: setup_connectrpc
setup_connectrpc: go.mod
	go install github.com/bufbuild/buf/cmd/buf@latest && \
	go install github.com/fullstorydev/grpcurl/cmd/grpcurl@latest && \
	go install google.golang.org/protobuf/cmd/protoc-gen-go@latest && \
	go install connectrpc.com/connect/cmd/protoc-gen-connect-go@latest
