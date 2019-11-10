FROM php:7.3-cli-alpine
ARG VERSION_SUFFIX=''
RUN apk add --no-cache wget && \
    wget "http://get.blackfire.io/blackfire-player$VERSION_SUFFIX.phar" && \
    mv blackfire-player$VERSION_SUFFIX.phar /usr/local/bin/blackfire-player && \
    chmod +x /usr/local/bin/blackfire-player

WORKDIR /app

ENTRYPOINT ["/usr/local/bin/blackfire-player"]
