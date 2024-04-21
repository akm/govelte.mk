.PHONY: dev
dev: local_dev_up run

.PHONY: run
run:
	$(DEV_ENVS) go run $(PATH_TO_CMD_APISVR)

.PHONY: local_dev_up
local_dev_up:
	$(MAKE) -C $(PATH_TO_LOCALDEV) up

.PHONY: local_dev_down
local_dev_down:
	$(MAKE) -C $(PATH_TO_LOCALDEV) down
