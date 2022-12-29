rm -R marcin.floryan.pl/
docker run --rm \
  --volume="$PWD:/srv/jekyll" \
  jekyll/jekyll \
  jekyll build --verbose --destination marcin.floryan.pl/
