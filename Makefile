up:
	cd docker && docker compose up -d
down:
	cd docker && docker compose down --remove-orphans
build:
	cd docker && docker compose build --no-cache
destroy:
	cd docker && docker-compose down --rmi all --volumes --remove-orphans
app:
	cd docker && docker-compose exec app bash
create-db:
	cd docker && docker compose exec app php ./init_wizard/create_table.php
init:
	@make build
	@make up