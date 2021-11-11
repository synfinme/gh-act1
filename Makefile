
REPO_NAME := synfinmelab
IMAGE_NAME := gh-act1
IMAGE_TAG := v0.1
IMAGE := "${REPO_NAME}/${IMAGE_NAME}:${IMAGE_TAG}"

_init	:
	echo "*** Use { build | run } ***"

build	:
	docker build -t ${IMAGE} .

push	: build
	docker push ${IMAGE}

run	: build
	docker run --rm ${IMAGE}
