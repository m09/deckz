check:
	black --check deckz
	isort --check-only deckz
	mypy deckz
	flake8 --count deckz
	pylint deckz

build-and-push-docker-image:
	docker build -t nzmognzmp/deckz-ci-worker .
	docker push nzmognzmp/deckz-ci-worker:latest

.PHONY: check build-and-push-docker-image
