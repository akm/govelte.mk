apisvr:
	cp -r $(PATH_TO_GOVELTEMK)/templates/backends_apisvr ./apisvr

applib:
	cp -r $(PATH_TO_GOVELTEMK)/templates/frontends_applib ./applib

biz:
	cp -r $(PATH_TO_GOVELTEMK)/templates/frontends_biz ./biz

local:
	cp -r $(PATH_TO_GOVELTEMK)/templates/frontends_local ./local

dbmigrations:
	cp -r $(PATH_TO_GOVELTEMK)/templates/backends_dbmigrations ./dbmigrations
