# DEV_DEPS の定義は この .mk ファイルを include する前に定義してください
.PHONY: dev
dev: $(DEV_DEPS)
	$(DEV_ENVS) npm run dev

.PHONY: dev_servers
dev_servers:
	$(DEV_ENVS) \
		$(MAKE) -C $(PATH_TO_SERVERS) dev

.PHONY: dev_run
dev_run:$(DEV_DEPS)
	$(DEV_ENVS) npx vite dev --port $(APP_PORT_UISVR_HTTP_dev)
