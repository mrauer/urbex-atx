FROM alpine:3.7

RUN apk add --no-cache python3 bash

WORKDIR /usr/src/app

COPY bucket/ .

CMD ["./run.sh"]
