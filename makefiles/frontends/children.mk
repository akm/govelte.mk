uisvr:
	cat $(PATH_TO_GOVELTEMK)/makefiles/frontends/uisvr_setup.txt && \
	npm create svelte@latest uisvr && \
	cp -rf $(PATH_TO_GOVELTEMK)/templates/frontends_uisvr/* ./uisvr
