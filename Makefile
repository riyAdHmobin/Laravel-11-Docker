setup:
	@make build
	@make up 
	@make composer-update

build:
	docker-compose build --no-cache --force-rm

down:
	docker-compose down

up:
	docker-compose up -d

open-container:
	docker exec -it laravel-11 bash

composer-update:
	docker exec laravel-11 bash -c "composer update"

data:
	docker exec laravel-11 bash -c "php artisan migrate"
	docker exec laravel-11 bash -c "php artisan db:seed"