SERVICE ?= kong

.PHONY: up
up: down
	@docker-compose up -d

.PHONY: down
down:
	@docker-compose down

.PHONY: logs
logs:
	@docker-compose logs -f $(SERVICE)
