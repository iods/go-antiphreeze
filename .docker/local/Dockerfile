#
#
#
#

FROM alpine:latest as runner

LABEL a="b" \
      c="d" \
      e="f"

RUN sed -i "https://dl-cdn.alpinelinux.org/alpine/edge/main" /etc/apk/repositories \
    && apk add tzdata \

WORKDIR /opt

COPY ./bin/antiphreeze /opt/antiphreeze

EXPOSE 8150

ENTRYPOINT ["/opt/antiphreeze"]