[![Check for Updates](https://github.com/erri120/docker-caddy-porkbun/actions/workflows/check-update.yml/badge.svg)](https://github.com/erri120/docker-caddy-porkbun/actions/workflows/check-update.yml)

# docker-caddy-porkbun-cachehandler

This is a custom [Caddy](https://hub.docker.com/_/caddy)-based image that:

- adds the [porkbun](https://github.com/caddy-dns/porkbun) and [cache-handler](https://github.com/caddyserver/cache-handler) modules
- installs [`tzdata`](https://wiki.alpinelinux.org/wiki/Setting_the_timezone) so you can use the `TZ` environment variable
- installs `curl` so you can add a custom [healthcheck](https://docs.docker.com/compose/compose-file/#healthcheck)

## Usage

The image is availabe via [GitHub Packages](https://github.com/amarevite/docker-caddy-porkbun-cachehandler/pkgs/container/docker-caddy-porkbun-cachehandler). You can use the `latest` tag or a specific Caddy version:

- `erri120/docker-caddy-porkbun:latest` (latest from Docker Hub)
- `ghcr.io/erri120/docker-caddy-porkbun:latest` (latest from GitHub)
- `erri120/docker-caddy-porkbun:2.6.2` (Caddy `2.6.2` from Docker Hub)
- `ghcr.io/erri120/docker-caddy-porkbun:2.6.2` (Caddy `2.6.2` from GitHub)

The following platforms are supported:

- `linux/amd64` (normal x64)
- `linux/arm64` (64-bit ARM, eg: Raspberry Pi 3/4)
- `linux/arm/v7` (32-bit ARM hard-float, eg: Raspberry Pi 2)

Don't forget to [update your config](https://github.com/caddy-dns/porkbun#config-examples) after pulling the image.

## License

See [LICENSE](./LICENSE) for more information.
