build:
	docker-compose build --pull

up:
	docker-compose up -d

backup:
	docker-compose run --rm mc /opt/minecraft/backup.sh
