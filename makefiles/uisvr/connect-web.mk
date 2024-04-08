.PHONY: generate
generate:
	npx buf generate ../../backends/apisvr/proto/**/*.proto
