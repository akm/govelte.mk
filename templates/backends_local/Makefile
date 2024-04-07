.PHONY: default
default: build lint test

PATH_TO_PROJECT:=../..
include $(PATH_TO_PROJECT)/.govelte.config.mk

.PHONY: dev
dev: dev_up

.PHONY: dev_up
dev_up:
	$(MAKE) -C localdev up

.PHONY: test_up
test_up:
	$(MAKE) -C localtest up
