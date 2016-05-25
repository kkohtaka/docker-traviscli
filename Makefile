# Copyright 2016, Kazumasa Kohtaka. All rights reserved.

USER?=kkohtaka
PRODUCT?=traviscli
VERTION?=1.8.2-1.0.0

IMAGE_NAME=$(USER)/$(PRODUCT):$(VERTION)

.PHONY: build push

all: build

build:
	docker build -t $(IMAGE_NAME) .

push:
	docker push $(IMAGE_NAME)
