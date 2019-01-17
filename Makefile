IMAGE = canassa/python-poetry

build:
	docker build -t ${IMAGE}:3.7 3.7
	docker build -t ${IMAGE}:3.6 3.6
	docker build -t ${IMAGE}:3.5 3.5
	docker build -t ${IMAGE}:2.7 2.7

push:
	docker push ${IMAGE}:3.7
	docker push ${IMAGE}:3.6
	docker push ${IMAGE}:3.5
	docker push ${IMAGE}:2.7

test:
	docker run --rm ${IMAGE}:3.7 poetry --version
	docker run --rm ${IMAGE}:3.6 poetry --version
	docker run --rm ${IMAGE}:3.5 poetry --version
	docker run --rm ${IMAGE}:2.7 poetry --version

.PHONY: build tag push test