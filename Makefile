.PHONY run migrate seed

run:
	./bin/dev

migrate:
	rails db:migrate

seed:
	rails db:seed
