help: ## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
.PHONY: help

test: ## Test building docker image.
	docker-compose -f docker-compose.test.yml build
	docker-compose -f docker-compose.test.yml up
.PHONY: test
