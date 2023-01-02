#!/usr/bin/make -ef

# This should be exported and thus passed to docker-compose
export SSH_PORT ?= 10023
export NODE_NAME = myspace

IPNS_NAME = lars.bahner.com

up:
	docker-compose up -d

down:
	docker-compose down

ssh:
	ssh -p $(SSH_PORT) $(IPNS_NAME)@127.0.0.1

datadirs: .export .ipfs .vault

.export:
	mkdir -p .export

.ipfs:
	mkdir -p .ipfs

.vault:
	mkdir -p .vault

clean:
	rm -rf .export

distclean: clean
	sudo rm -rf .vault .ipfs
