# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Is

Jekyll-based personal website for Marcin Floryan. Static site with blog posts, speaking events, podcast recommendations, and quotes. The same build is published to three domains — **`marcin.floryan.eu` is canonical** (it's the `url` in `_config.yaml` and feeds `jekyll-seo-tag`), with `marcin.floryan.se` and `marcin.floryan.pl` serving the same content. Jekyll source lives in `site/`; the production build is written to the `marcin.floryan.se/` directory (gitignored — the directory name does not track the canonical domain) and deployed from there.

Everything runs in Docker — no local Ruby or Node required. `docker-compose.yml` defines the services; the `Makefile` is the entry point (`make help` lists targets). All targets shell out to `docker compose` (or `docker run` / `rsync`).

## Development

| Command | What it does |
|---|---|
| `make serve` | Dev server + SASS watcher. Jekyll livereload on ports 4000 and 35729; the `sass` service recompiles `site/assets/css/main.css` on change. Ctrl-C stops it, then `docker compose down` runs. `.claude/launch.json` starts the same two services directly for the Claude Code preview. |
| `make build` | Production build. `clean` (deletes `marcin.floryan.se/` and compiled CSS) → compile `main.css` **compressed** → `jekyll build` (`JEKYLL_ENV=production`) into `marcin.floryan.se/` → **htmlproofer** (`--disable-external`; ignores `linkedin.com` / `twitter.com`). |
| `make proof` | htmlproofer only, against the existing build output. |
| `make deploy` | `make build`, then `rsync --checksum --delete-after` of `marcin.floryan.se/` to `klint.floryan.se:/srv/www/sites/floryan.se/marcin/`. |
| `make clean` | Remove the build output and compiled CSS. |
| `make gems` | `bundle update` in the jekyll container (rewrites `site/Gemfile.lock` via the `./site` mount), then `docker compose build` to bake gems into the image. Run after editing `site/Gemfile`. |
| `make packages` | Update `sass` to its latest release via a throwaway `node:22-slim` container with `--package-lock-only` (rewrites `package.json` + `package-lock.json`, leaves no host `node_modules`), then rebuild the `sass` image. Run after editing `package.json`. |
| `make deps` | `gems` + `packages`. |

## Architecture

- `site/_posts/` — Blog articles, `YYYY-MM-DD-slug.md`, all `layout: blog`. Permalink `/blog/:year/:month/:slug`.
- `site/_events/` — Speaking engagements, `YYYY-MM-DD-slug.md`. Permalink `/events/:year/:slug`, but most entries set an explicit full-dated `permalink:` in frontmatter. Two kinds:
  - With a write-up: `layout: event`, body content rendered.
  - Listing-only (the majority): `output: false`, no layout, no body — surfaced only in `events.html` via `site.events`.
- `site/_data/` — `nav.yaml` (top nav), `podcasts.json`, `quotes.yaml`.
- `site/_layouts/` — `default` (page shell; itself uses `layout: compress`), `blog`, `event`, `index`, and `compress` (whitespace/comment stripping — see below).
- `site/_includes/` — `head.html`, `nav.html`, `footer.html`, `social-links.html`.
- `site/_sass/` — SCSS; `main.scss` is the entry point, `_styles.scss` holds custom rules, `pico/` is the vendored framework.
- `site/assets/` — Static assets. `css/main.css` is generated (gitignored as `**/css/main.css*`), not committed.
- `_tools/` — Standalone Node scripts for importing data (`spotify.js`; `goodreads.js` is currently empty). Excluded from the Jekyll build.

## Styling

Uses [Pico CSS](https://picocss.com/) — semantic-HTML-first, minimal class attributes. Custom styles go in `site/_sass/_styles.scss`. `main.scss` configures Pico via `@use "pico" with (...)`: `slate` theme, several form/component modules disabled, `xxl` breakpoint off.

SCSS is compiled by the Node `sass` package (the `sass` Docker service), **not** `jekyll-sass-converter` — that plugin lags on `sass-embedded` and rejects current syntax. Jekyll's own `_sass/` processing is disabled via `exclude` in `_config.yaml`, so the dev server relies on the `sass` watcher running alongside it.

## Jekyll Configuration

`site/_config.yaml` controls collections, plugins, permalinks, and metadata. Notable:

- `future: true` — posts and events dated in the future **are** built and published.
- `exclude: ['*.sh', '_tools/', 'README.md', '_sass']`.
- `compress_html` — HTML minification, applied through `_layouts/compress.html` (`layout: compress` on `default.html`); disabled in the `development` env.
- Plugins: `jekyll-seo-tag`, `jekyll-figure` (`paragraphs: false`), `jekyll-last-modified-at`, `jekyll-redirect-from`. `html-proofer` is a gem but not a plugin.

## Adding Content

- **New blog post:** `site/_posts/YYYY-MM-DD-title.md`. Frontmatter: `layout: blog`, `title`, `subtitle`, `date`, `author`, `type: post`, `category`, `tags: [ ... ]`. The `blog` layout renders `subtitle`, `date`, `author`, and `tags`.
- **New event with a write-up:** `site/_events/YYYY-MM-DD-title.md` with `layout: event`, `type` (`conference` | `presentation` | `podcast` | `webinar` | `workshop` | `interview`), `name` (host/conference), `title`, `location`, explicit `permalink`, and Markdown body. The `event` layout renders `title`, `date`, and `location`.
- **New event, listing only:** same file, `output: false` and no layout/body; add `links: [{ type, link }]` for external references.
- Permalinks must never end with a trailing `/`.

## Planned Work

- **Responsive images** — images across the site should use `srcset`/`sizes` for responsive delivery. Currently images use a `{: style="max-width: ..."}` workaround where sizing is needed. When implementing, replace these inline styles with a proper responsive image solution (Jekyll plugin or custom Liquid include). See `README.md` "Useful pointers" for candidate libraries.
