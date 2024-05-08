PATH_TO_NODE_MODULES=node_modules
$(PATH_TO_NODE_MODULES):
	$(MAKE) install

.PHONY: install
install:
	npm ci

.PHONY: install_latest
install_latest:
	npm install && \
	npm install --save-dev @bufbuild/buf @connectrpc/protoc-gen-connect-es @bufbuild/protoc-gen-es && \
	npm install @connectrpc/connect @connectrpc/connect-web @bufbuild/protobuf

.PHONY: build
build: $(PATH_TO_NODE_MODULES) $(BUILD_DEPS)
	npm run check

.PHONY: lint
lint: $(PATH_TO_NODE_MODULES) $(LINT_DEPS)
	npm run lint

.PHONY: preview
preview: $(PATH_TO_NODE_MODULES) $(PREVIEW_DEPS)
	npm run preview

.PHONY: test
test: $(PATH_TO_NODE_MODULES) $(TEST_DEPS)
	npm run test
