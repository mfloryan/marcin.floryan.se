# marcin.floryan.eu — task runner.
# Everything runs in Docker via docker compose; no local Ruby or Node required.

COMPOSE   := docker compose
OUT       := marcin.floryan.se
CSS       := site/assets/css/main.css
SASS      := $(COMPOSE) run --rm sass node node_modules/sass/sass.js --silence-deprecation=if-function
DEPLOY    := klint.floryan.se:/srv/www/sites/floryan.se/marcin/

.PHONY: help serve down css build proof deploy clean gems packages deps

help: ## List available targets
	@grep -hE '^[a-zA-Z_-]+:.*## ' $(MAKEFILE_LIST) \
		| sort \
		| awk 'BEGIN {FS = ":.*## "}; {printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2}'

serve: ## Dev server + SASS watcher (Jekyll livereload on :4000); Ctrl-C to stop
	-$(COMPOSE) up --remove-orphans serve sass
	$(COMPOSE) down

down: ## Stop and remove containers and networks
	$(COMPOSE) down

css: ## Compile SCSS once (compressed) to site/assets/css/main.css
	$(SASS) --style=compressed --no-source-map site/_sass/main.scss $(CSS)

build: clean css ## Production build: compressed CSS + Jekyll + htmlproofer
	$(COMPOSE) run --rm --remove-orphans build
	$(COMPOSE) run --rm proof
	$(COMPOSE) down

proof: ## Run htmlproofer against the existing build output
	$(COMPOSE) run --rm proof

deploy: build ## Build, then rsync the output to the production server
	rsync --recursive --info=progress2,name1 --checksum --compress --delete-after \
		--exclude='.DS_Store' --exclude='._*' \
		$(OUT)/ $(DEPLOY)

clean: ## Remove the build output and compiled CSS
	rm -rf $(OUT) $(CSS) $(CSS).map

gems: ## Update Ruby gems (rewrites site/Gemfile.lock), then rebuild the image
	$(COMPOSE) run --rm bundle
	$(COMPOSE) build

packages: ## Update the sass npm package (rewrites package-lock.json), then rebuild the image
	docker run --rm -v "$(CURDIR)":/app -w /app node:22-slim \
		npm install sass@latest --package-lock-only --no-audit --no-fund
	$(COMPOSE) build sass

deps: gems packages ## Update both Ruby and Node dependencies
