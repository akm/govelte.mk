# DEV_DEPS の定義は この .mk ファイルを include する前に定義してください
.PHONY: dev
dev: local_dev_up run

.PHONY: run
run: setup
	$(DEV_ENVS) npx vite dev --port $(APP_PORT_UISVR_dev)

.PHONY: local_dev_up
local_dev_up:
	$(MAKE) -C $(PATH_TO_LOCALDEV) up DEV_TARGET=uisvr

.PHONY: local_dev_down
local_dev_down:
	$(MAKE) -C $(PATH_TO_LOCALDEV) down DEV_TARGET=uisvr
