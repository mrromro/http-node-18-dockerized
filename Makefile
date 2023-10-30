IMAGE_NAME=node-http-image
CONTAINER_NAME=node-http-container

all: build run

build:
	docker build -t $(IMAGE_NAME) .

run:
	docker run -d --name $(CONTAINER_NAME) -p 3000:3000 $(IMAGE_NAME)

stop:
	docker stop $(CONTAINER_NAME)
	docker rm $(CONTAINER_NAME)

logs:
	docker logs -f $(CONTAINER_NAME)

.PHONY: all build run stop logs
