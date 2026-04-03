rm -R marcin.floryan.se/
rm site/assets/css/*.css*
docker compose run --rm sass node node_modules/sass/sass.js --style=compressed --no-source-map --silence-deprecation=if-function site/_sass/main.scss site/assets/css/main.css
docker compose run --remove-orphans build
docker compose run --rm proof
docker compose down
