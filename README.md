# marcin.floryan.eu — Jekyll sources

This becomes the https://marcin.floryan.eu/ website after being parsed through [Jekyll](https://jekyllrb.com/). The same build is published to three domains — `marcin.floryan.eu` (canonical), `marcin.floryan.se`, and `marcin.floryan.pl` — all served from one deploy.

## Jekyl Plugins used

- [jekyll-last-modified-at](https://github.com/gjtorikian/jekyll-last-modified-at)
- [jekyll-figure](https://github.com/paulrobertlloyd/jekyll-figure)
- [jekyll-seo-tag](https://github.com/jekyll/jekyll-seo-tag)
- [jekyll-redirect-from](https://github.com/jekyll/jekyll-redirect-from)
- [html-proofer](https://github.com/gjtorikian/html-proofer)

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

Everything runs through `make` (all targets run in Docker — no local Ruby or Node). Run `make help` for the full list.

| Command | Purpose |
|---|---|
| `make serve` | Dev server + SASS watcher (Jekyll livereload on :4000). Ctrl-C to stop. |
| `make build` | Production build: compressed CSS + Jekyll build + htmlproofer validation. |
| `make proof` | Run htmlproofer only, against the last build. |
| `make deploy` | Build, then rsync the output to the production server. |
| `make gems` | Update Ruby gems (`site/Gemfile.lock`) and rebuild the image. Run after changing `site/Gemfile`. |
| `make packages` | Update the `sass` package (`package-lock.json`) and rebuild the image. Run after changing `package.json`. |
| `make deps` | `gems` + `packages`. |
| `make clean` | Remove the build output and compiled CSS. |

## Useful pointers

- https://digitaldrummerj.me/styling-jekyll-markdown/
- https://rbuchberger.github.io/jekyll_picture_tag/
- https://github.com/wildlyinaccurate/jekyll-responsive-image
- https://github.com/generalui/jekyll-image-size

### Other Jekyll sites

- [home-assistant.io](https://github.com/home-assistant/home-assistant.io)

## Inspiration

- [https://www.itaytalgam.com/](https://www.itaytalgam.com/)
