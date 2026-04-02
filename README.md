# marcin.floryan.pl - Jekyll sources

This becomes the https://marcin.floryan.se/ website after being parsed through [Jekyll](https://jekyllrb.com/).

## Jekyl Plugins used

- [jekyll-last-modified-at](https://github.com/gjtorikian/jekyll-last-modified-at)
- [jekyll-figure](https://github.com/paulrobertlloyd/jekyll-figure)
- [jekyll-seo-tag](https://github.com/jekyll/jekyll-seo-tag)

## Docker images

Two images, both built locally and run via `docker compose`:

- `Dockerfile` — Ruby-only image (`ruby:3.3-slim`) for Jekyll. Gems are baked in at build time from `site/Gemfile.lock`.
- `Dockerfile.sass` — Node image (`node:22-slim`) for SCSS compilation. The `sass` package is installed at build time via `npm ci`.

No local Ruby or Node required.

Previously used existing docker images such as

- https://github.com/envygeeks/jekyll-docker
- https://github.com/BretFisher/jekyll-serve

## Stylesheet

Decided against hand-crafting my won CSS and instead lean on existing framework. The [Pico CSS](https://picocss.com/) offers the best balance of support for semantic HTML without class overload with customisation and a good collection of components.

### SCSS

I have decided to customise the Pico CSS bundle using SASS. Jekyll supports SASS out of the box through the bundled `jekyll-sass-converter` plugin [^1]. Unfortunately `jekyll-sass-converter` lags behind on its `sass-embedded` dependency and does not support the latest syntax. The SCSS is therefore compiled by a separate `sass` Docker service using the Node `sass` package instead. Jekyll's own `_sass/` processing is disabled via `exclude` in `_config.yaml`.

[^1]: [Jekyll Sass configuration page](https://jekyllrb.com/docs/configuration/sass/)

## Workflow

**Dev server** (Jekyll + SASS watcher, both in Docker):
```sh
./serve.sh
```

**Production build:**
```sh
./build.sh
```

**Update Ruby gems** (when changing `site/Gemfile`):
```sh
docker compose run --rm bundle
docker compose build
```

**Update Node packages** (when changing `package.json`):
```sh
docker compose build sass
```

## Useful pointers

- https://digitaldrummerj.me/styling-jekyll-markdown/
- https://rbuchberger.github.io/jekyll_picture_tag/
- https://github.com/wildlyinaccurate/jekyll-responsive-image
- https://github.com/generalui/jekyll-image-size

### Other Jekyll sites

- [home-assistant.io](https://github.com/home-assistant/home-assistant.io)

## Inspiration

- [https://www.itaytalgam.com/](https://www.itaytalgam.com/)
