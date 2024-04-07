.PHONY: default
default: build lint test

PATH_TO_PROJECT:=../..
include $(PATH_TO_PROJECT)/.config.mk

GO_ROOT_PACKAGE=biz

include $(PATH_TO_GOVELTEMK)/makefiles/asdf/reshim.mk
include $(PATH_TO_GOVELTEMK)/makefiles/git/check.mk
include $(PATH_TO_GOVELTEMK)/makefiles/golang/build.mk
include $(PATH_TO_GOVELTEMK)/makefiles/golang/lint.mk

TEST_ENVS=\
	GOOGLE_CLOUD_PROJECT=$(GOOGLE_CLOUD_PROJECT)
include $(PATH_TO_GOVELTEMK)/makefiles/biz/test.mk

include $(PATH_TO_GOVELTEMK)/makefiles/biz/sqlboiler.mk
