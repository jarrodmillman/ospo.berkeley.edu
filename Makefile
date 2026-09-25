.PHONY: help html serve clean
.DEFAULT_GOAL := help

help:
	@grep ": ##" Makefile | grep -v grep | tr -d '#'

html: ## Build site in `./_build`
html:
	myst build --html

serve: ## Serve site, typically on http://localhost:1313
serve:
	myst start --port 1313

clean: ## Remove built files
clean:
	myst clean --all

