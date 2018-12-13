FROM golang:1.11.2-alpine3.8 AS builder

WORKDIR /go/src/app

COPY main.go .

RUN apk add --no-cache --virtual .build-deps \
       git \
    && go get -d -v ./... \
    && go install -v ./... \
    && apk del .build-deps

FROM alpine:3.8

LABEL maintainer="Carlos Remuzzi <carlosremuzzi@gmail.com>"

COPY --from=builder /go/bin/app /usr/local/bin/mqtt

USER nobody

WORKDIR /home/nobody

CMD ["mqtt"]
