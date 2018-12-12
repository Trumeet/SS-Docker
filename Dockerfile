FROM alpine:3.8 as downloader
MAINTAINER YuutaW
ENV SHADOWSOCKS_VERSION=1.2.1
WORKDIR /app
ADD https://github.com/shadowsocks/shadowsocks-go/releases/download/${SHADOWSOCKS_VERSION}/shadowsocks-server.zip ss.zip
RUN unzip ss.zip \
    && rm ss.zip 

FROM scratch 
WORKDIR /app
COPY --from=downloader /app/shadowsocks-server .

ENTRYPOINT [ "/app/shadowsocks-server" ] 
