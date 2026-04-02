# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Is

Jekyll-based personal website for Marcin Floryan (marcin.floryan.se). Static site with blog posts, events, podcasts, and quotes. Source lives in `site/`, production output goes to `marcin.floryan.se/`.

## Development

**Start dev server:**
```bash
./serve.sh
```
This runs `docker compose up serve sass` — Jekyll with livereload on ports 4000 and 35729, plus the SASS watcher. No local Ruby or Node required.

**Production build:**
```bash
./build.sh
```

**Update Ruby gems (when changing Gemfile):**
```bash
docker compose run --rm bundle
docker compose build
```
`bundle update` writes the new `site/Gemfile.lock` via the volume mount; then rebuild the image to bake in the updated gems.

## Architecture

- `site/_posts/` — Blog articles in Markdown with YAML frontmatter, named `YYYY-MM-DD-slug.md`
- `site/_events/` — Speaking engagements, rendered at `/events/:year/:slug`
- `site/_data/` — Structured data: `nav.yaml`, `podcasts.json`, `quotes.yaml`
- `site/_layouts/` — Liquid templates: `default`, `blog`, `index`
- `site/_includes/` — Reusable HTML snippets (head, nav, footer)
- `site/_sass/` — SCSS with Pico CSS framework; `main.scss` is the entry point
- `site/assets/css/` — Compiled CSS output (generated, not committed)
- `_tools/` — Standalone Node.js scripts for importing data from Spotify and Goodreads

## Styling

Uses [Pico CSS](https://picocss.com/) — semantic HTML-first framework that requires minimal class attributes. Custom styles go in `site/_sass/_styles.scss`. The SCSS is compiled by the Node.js `sass` package (via the `sass` Docker service) rather than `jekyll-sass-converter` — Jekyll excludes `_sass/` from processing. The `node_modules/` directory in the repo root provides the sass binary.

## Jekyll Configuration

`site/_config.yaml` controls collections, plugins, permalink structure, and site metadata. Key plugins: `jekyll-seo-tag`, `jekyll-redirect-from`, `jekyll-last-modified-at`, `jekyll-figure`.

## Planned Work

- **Responsive images** — images across the site should use `srcset`/`sizes` for responsive delivery. Currently images use a `{: style="max-width: ..."}` workaround where sizing is needed. When implementing, replace these inline styles with a proper responsive image solution (Jekyll plugin or custom Liquid include).

## Adding Content

- New blog post: create `site/_posts/YYYY-MM-DD-title.md` with YAML frontmatter
- New event: create `site/_events/YYYY-MM-DD-title.md`
- Permalinks must never end with a trailing `/`
- Event pages with content use `layout: event`; listing-only entries use `output: false` with no layout
- No local Ruby or Node required — everything runs in Docker
