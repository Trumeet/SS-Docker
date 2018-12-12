FROM alpine:3.8
MAINTAINER YuutaW
ENV SHADOWSOCKS_VERSION=1.2.1
WORKDIR /app
ADD https://github.com/shadowsocks/shadowsocks-go/releases/download/${SHADOWSOCKS_VERSION}/shadowsocks-server.zip ss.zip
RUN unzip ss.zip \
    && rm ss.zip 
ENTRYPOINT [ "/app/shadowsocks-server" ] 
