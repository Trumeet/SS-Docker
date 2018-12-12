[![](https://img.shields.io/docker/build/thnuiwelr/ss-docker.svg)](https://hub.docker.com/r/thnuiwelr/ss-docker/)
[![](https://img.shields.io/docker/pulls/thnuiwelr/ss-docker.svg)](https://hub.docker.com/r/thnuiwelr/ss-docker/)
[![](https://img.shields.io/microbadger/image-size/thnuiwelr/ss-docker.svg)](https://hub.docker.com/r/thnuiwelr/ss-docker/)

# SS-Docker
This is an unoffical docker implementation for Shadowsocks (personal usage only).

Please use it according your local laws.

# Usage
It wraps a ssr program, you can just replace any `shadowsocks-server` command to `docker run --rm -d -p <port>:<port_insude> thnuiwelr/ss-docker`.

Demo: to print the version:

```shell
$ docker run \
    thnuiwelr/ss-docker \
    --version
```

# License
WTFPL - Don't worry about it.
