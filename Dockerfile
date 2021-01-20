FROM nginx:alpine as build

RUN apk add --update \
    wget

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
