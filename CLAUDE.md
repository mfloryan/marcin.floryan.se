# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Is

Jekyll-based personal website for Marcin Floryan (marcin.floryan.se). Static site with blog posts, events, podcasts, and quotes. Source lives in `site/`, production output goes to `marcin.floryan.se/`.

## Development

**Start dev server:**
```bash
./serve.sh
```
This runs `docker compose up serve` — Jekyll with livereload on ports 4000 and 35729.

**Compile SCSS (run in parallel with serve.sh):**
```bash
node_modules/sass/sass.js --watch --silence-deprecation=mixed-decls site/_sass/main.scss site/assets/css/main.css
```

**Production build:**
```bash
./build.sh
```

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

Uses [Pico CSS](https://picocss.com/) — semantic HTML-first framework that requires minimal class attributes. Custom styles go in `site/_sass/_styles.scss`. The SCSS is compiled by the Node.js `sass` package (not jekyll-sass-converter) because of version lag.

## Jekyll Configuration

`site/_config.yaml` controls collections, plugins, permalink structure, and site metadata. Key plugins: `jekyll-seo-tag`, `jekyll-redirect-from`, `jekyll-last-modified-at`, `jekyll-figure`.

## Adding Content

- New blog post: create `site/_posts/YYYY-MM-DD-title.md` with YAML frontmatter
- New event: create `site/_events/YYYY-MM-DD-title.md`
- The Docker container runs Jekyll; no local Ruby install required
