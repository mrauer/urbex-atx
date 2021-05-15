FROM alpine:3.7

RUN apk add --no-cache python3 bash make

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip3 install --no-cache-dir --upgrade pip==21.1.1 && \
    pip3 install --no-cache-dir -r requirements.txt

COPY bucket/ ./bucket
COPY push.sh .
COPY Makefile .
