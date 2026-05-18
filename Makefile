.PHONY: help html serve clean
.DEFAULT_GOAL := help

help:
	@grep ": ##" Makefile | grep -v grep | tr -d '#'

html: ## Build site in `./_build`
html:
	jupyter-book build .

serve: ## Serve site, typically on http://localhost:1313
serve:
	python -m http.server --directory _build/html 1313

clean: ## Remove built files
clean:
	rm -rf public
