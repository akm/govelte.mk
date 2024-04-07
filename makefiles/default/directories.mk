# PATH_TO_PROJECT が各Makefile で設定されている前提
PATH_TO_BACKENDS?=$(PATH_TO_PROJECT)/backends
PATH_TO_APISVR?=$(PATH_TO_BACKENDS)/apisvr
PATH_TO_APPLIB?=$(PATH_TO_BACKENDS)/applib
PATH_TO_BIZ?=$(PATH_TO_BACKENDS)/biz
PATH_TO_SERVER_CONTAINERS?=$(PATH_TO_BACKENDS)/containers
PATH_TO_FB_EMU?=$(PATH_TO_SERVER_CONTAINERS)/firebase-emulators
PATH_TO_MYSQL?=$(PATH_TO_SERVER_CONTAINERS)/mysql
PATH_TO_LOCALDEV?=$(PATH_TO_SERVER_CONTAINERS)/localdev
PATH_TO_LOCALTEST?=$(PATH_TO_SERVER_CONTAINERS)/localtest
PATH_TO_DBMIGRATIONS?=$(PATH_TO_BACKENDS)/dbmigrations
PATH_TO_SERVER_REPLACEMENTS?=$(PATH_TO_BACKENDS)/replacements

PATH_TO_FRONTENDS?=$(PATH_TO_PROJECT)/frontends
PATH_TO_UISVR?=$(PATH_TO_FRONTENDS)/uisvr
PATH_TO_TEST_INTEGRATION?=$(PATH_TO_UISVR)/tests/integration
PATH_TO_TEST_INTEGRATION_CONTAINERS?=$(PATH_TO_TEST_INTEGRATION)/containers

PATH_TO_SWAGGERUI?=$(PATH_TO_PROJECT)/tools/swaggerui