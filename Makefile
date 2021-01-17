build:
	docker build -t urbex-atx:latest .

run:
	docker build -t urbex-atx:latest . && docker run -p 8000:8000 -it --rm urbex-atx:latest
