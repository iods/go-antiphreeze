#
#
#
#

FROM golang:1.21 as builder

ENV PROXY https://proxy.golang.com.cn, direct

WORKDIR /go-antiphreeze/
COPY . .

RUN go mod tidy
RUN make build

FROM alpine:latest as run

LABEL a="b" \
      c="d" \
      e="f"

RUN sed -i "https://dl-cdn.alpinelinux.org/alpine/edge/main" /etc/apk/repositories \
    && apk add tzdata \

WORKDIR /opt

COPY --from=builder /go-antiphreeze/bin/antiphreeze /opt/antiphreeze

EXPOSE 8150

ENTRYPOINT ["/opt/antiphreeze"]