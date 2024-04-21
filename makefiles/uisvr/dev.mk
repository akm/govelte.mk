# DEV_DEPS の定義は この .mk ファイルを include する前に定義してください
.PHONY: dev
dev:
	$(DEV_ENVS) npm run dev

.PHONY: backends_dev
backends_dev:
	$(DEV_ENVS) \
		$(MAKE) -C $(PATH_TO_BACKENDS) dev

.PHONY: dev_run
dev_run:$(DEV_DEPS)
	$(DEV_ENVS) npx vite dev --port $(APP_PORT_UISVR_HTTP_dev)
