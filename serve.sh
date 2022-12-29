docker run -i -t --rm \
  --name=jekyll \
  --volume="$PWD:/srv/jekyll" \
  --publish 4000:4000 --publish 35729:35729 \
  jekyll/jekyll \
  jekyll serve --livereload --livereload-min-delay 5
