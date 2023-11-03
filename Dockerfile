ARG CADDY_VERSION=2.7.5

# Builder
FROM caddy:${CADDY_VERSION}-builder-alpine AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/porkbun \
    --with github.com/caddyserver/cache-handler

# Container
FROM caddy:${CADDY_VERSION}-alpine

# install additional packages
RUN apk add --no-cache tzdata curl

LABEL org.opencontainers.image.vendor="amarevite"
LABEL org.opencontainers.image.documentation="https://github.com/amarevite/docker-caddy-porkbun-cachehandler"
LABEL org.opencontainers.image.source="https://github.com/amarevite/docker-caddy-porkbun-cachehandler"

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
