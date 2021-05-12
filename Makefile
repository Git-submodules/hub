setup:
	cd task-base-laravel-api && cp .env.example .env && composer install && php artisan key:generate
	cd task-base-nextjs-spa && yarn install
	cd task-base-ionic-mobile && yarn install
serve-all: 
	make -j 3 serve-next serve-ionic serve-laravel
serve-next:
	cd task-base-nextjs-spa && yarn dev -p 4000
serve-ionic:
	cd task-base-ionic-mobile && yarn start -p 3000
serve-laravel:
	cd task-base-laravel-api && php artisan serve

