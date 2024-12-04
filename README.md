# marcin.floryan.pl - Jekyll sources

This becomes the https://marcin.floryan.se/ website after being parsed through [Jekyll](https://jekyllrb.com/).

## Jekyl Plugins used

- [jekyll-last-modified-at](https://github.com/gjtorikian/jekyll-last-modified-at)
- [jekyll-figure](https://github.com/paulrobertlloyd/jekyll-figure)
- [jekyll-seo-tag](https://github.com/jekyll/jekyll-seo-tag)

## Docker images

Now using simple docker image defined in `Dockerfile` that pulls the latest version of jekyll and facilitate running with `docker compose`

Previously used existing docker images such as

- https://github.com/envygeeks/jekyll-docker
- https://github.com/BretFisher/jekyll-serve

## Stylesheet

Decided against hand-crafting my won CSS and instead lean on existing framework. The [Pico CSS](https://picocss.com/) offers the best balance of support for semantic HTML without class overload with customisation and a good collection of components.

### SCSS

I have decided to customise the Pico CSS budle using SASS. Jekyll support SASS out of the box through the bundled `jekyll-sass-converter` plugin [^1]. Unfortunately that plugin has last been updated in December 2022. It uses `sass-embedded` gem at 1.75 while the latest version is `1.81` in December 2024. As such it does not support the latest syntax and an alternative tool needs to be used instead. I opted for a node module.

[^1]: [Jekyll Sass configuration page](https://jekyllrb.com/docs/configuration/sass/)

## Workflow

```sh
./serve.sh
node_modules/sass/sass.js --watch --silence-deprecation=mixed-decls site/_sass/main.scss site/assets/css/main.css
```

## Useful pointers

- https://digitaldrummerj.me/styling-jekyll-markdown/
- https://rbuchberger.github.io/jekyll_picture_tag/
- https://github.com/wildlyinaccurate/jekyll-responsive-image
- https://github.com/generalui/jekyll-image-size

### Other Jekyll sites

- [home-assistant.io](https://github.com/home-assistant/home-assistant.io)
