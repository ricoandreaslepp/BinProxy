.PHONY: help

help:
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

exploit: ## Start nginx locally using docker
	@docker run -v "$$(pwd)/nginx/nginx.conf:/etc/nginx/nginx.conf" -p 81:80 nginx
