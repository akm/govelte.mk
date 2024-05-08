.PHONY: install
install: \
	install_nodejs \
	install_golang \
	install_protoc \
	install_mysql
	asdf reshim

.PHONY: install_nodejs
install_nodejs:
	asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git && \
	asdf install nodejs lts && \
	asdf local nodejs lts

GOLANG_LAST_VERSION=$(shell asdf list all golang | tail -1)
.PHONY: install_golang
install_golang:
	asdf plugin add golang https://github.com/asdf-community/asdf-golang.git && \
	asdf install golang $(GOLANG_LAST_VERSION) && \
	asdf local golang $(GOLANG_LAST_VERSION)

PROTOC_LAST_VERSION=$(shell asdf list all protoc | tail -1)
.PHONY: install_protoc
install_protoc:
	asdf plugin add protoc https://github.com/paxosglobal/asdf-protoc.git && \
	asdf install protoc $(PROTOC_LAST_VERSION) && \
	asdf local protoc $(PROTOC_LAST_VERSION)

MYSQL_LAST_VERSION=$(shell asdf list all mysql | tail -1)
.PHONY: install_mysql
install_mysql:
	asdf plugin add mysql https://github.com/iroddis/asdf-mysql && \
	asdf install mysql $(MYSQL_LAST_VERSION) && \
	asdf local mysql $(MYSQL_LAST_VERSION)
