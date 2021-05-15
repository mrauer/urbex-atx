.PHONY: push

build:
	docker build -t urbex-atx:latest .

dev:
	docker build -t urbex-atx:latest . && docker run --env-file .env -p 8000:8000 -it --rm -v ${CURDIR}/bucket:/usr/src/app/bucket urbex-atx:latest

push:
	sh push.sh

serve:
	sh bucket/run.sh
