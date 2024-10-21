
run:
	./bin/dev

migrate:
	rails db:migrate

seed:
	rails db:seed

startServer:
	heroku ps:scale web web=1
	heroku addons:create heroku-postgresql:essential-0

stopServer:
	heroku addons:destroy heroku-postgresql:essential-0
	heroku ps:scale web web=0