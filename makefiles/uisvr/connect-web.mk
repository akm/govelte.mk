
.PHONY: generate
generate:
	$$SHELL -c 'npx buf generate ../../backends/apisvr/proto/**/*.proto'
# make can't treat asterisk as a wildcard, so we need to use shell to expand it
