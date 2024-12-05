rm -R marcin.floryan.se/
rm site/assets/css/*.css*
node_modules/sass/sass.js --style=compressed --no-source-map site/_sass/main.scss site/assets/css/main.css
docker compose run --remove-orphans build 
docker compose down
