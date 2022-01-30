docker run --rm \
  --volume="$PWD:/srv/jekyll" \
  --publish 4000:4000 \
  jekyll/jekyll \
  jekyll build --verbose --destination marcin.floryan.pl/

