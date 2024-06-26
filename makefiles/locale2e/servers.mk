# Firebase Emulators が期待する環境変数ですので名前を変更しないでください
# https://firebase.google.com/docs/emulator-suite/connect_auth?hl=ja
FIREBASE_AUTH_EMULATOR_HOST=127.0.0.1:$(APP_PORT_FIREBASE_AUTH_e2e_test)

APISVR_ENVS=\
	GOOGLE_CLOUD_PROJECT=$(GOOGLE_CLOUD_PROJECT) \
	APP_PORT=$(APP_PORT_APISVR_e2e_test) \
	FIREBASE_AUTH_EMULATOR_HOST=$(FIREBASE_AUTH_EMULATOR_HOST) \

.PHONY: apisvr_envs
apisvr_envs:
	@echo $(APISVR_ENVS)

PATH_TO_APISVR_LOG_DIR=log
$(PATH_TO_APISVR_LOG_DIR):
	mkdir -p $(PATH_TO_APISVR_LOG_DIR)

APISVR_MYSQL_DSN=$(shell $(ENVS) $(MAKE) -C $(PATH_TO_MYSQL) --no-print-directory dsn)

.PHONY: apisvr_run
apisvr_run: $(PATH_TO_APISVR_LOG_DIR)
	$(ENVS) \
	$(APISVR_ENVS) \
	APP_MYSQL_DSN='$(APISVR_MYSQL_DSN)' \
		$(MAKE) -C $(PATH_TO_APISVR) run >> $(PATH_TO_APISVR_LOG_DIR)/apisvr.log 2>&1


#      FIREBASE_AUTH_EMULATOR_HOST と
# VITE_FIREBASE_AUTH_EMULATOR_HOST は重複していますが、どちらの環境変数も必要です
UISVR_ENVS= \
	VITE_UISVR_ORIGIN=http://localhost:$(APP_PORT_UISVR_e2e_test) \
	VITE_APISVR_ORIGIN=http://localhost:$(APP_PORT_APISVR_e2e_test) \
	VITE_GOOGLE_CLOUD_PROJECT=$(GOOGLE_CLOUD_PROJECT) \
	FIREBASE_AUTH_EMULATOR_HOST=$(FIREBASE_AUTH_EMULATOR_HOST) \
	VITE_FIREBASE_AUTH_EMULATOR_HOST=$(FIREBASE_AUTH_EMULATOR_HOST) \
	VITE_APISVR_PORT=$(APP_PORT_APISVR_e2e_test)

.PHONY: uisvr_envs
uisvr_envs:
	@echo $(UISVR_ENVS)

.PHONY: uisvr_run
uisvr_run: $(PATH_TO_APISVR_LOG_DIR)
	$(ENVS) \
	$(UISVR_ENVS) \
		$(MAKE) -C $(PATH_TO_UISVR) build preview >> $(PATH_TO_APISVR_LOG_DIR)/uisvr.log 2>&1
