FROM alpine:latest
LABEL maintainer="https://github.com/onplus"

ENV VER=v4.22.1

RUN apk add --no-cache --virtual .build-deps ca-certificates curl \
 && mkdir -m 777 /v2raybin \
 && cd /v2raybin \
 #&& curl -L -H "Cache-Control: no-cache" -o v2ray.zip https://github.com/v2ray/v2ray-core/releases/download/$VER/v2ray-linux-64.zip \
 && curl -L -H "Cache-Control: no-cache" -o v2ray.zip https://github.com/v2ray/v2ray-core/releases/latest/download/v2ray-linux-64.zip \
 && unzip v2ray.zip \
 && chmod +x /v2raybin/v2ray \
 && rm -rf v2ray.zip \
 && chgrp -R 0 /v2raybin \
 && chmod -R g+rwX /v2raybin 
 
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh 

CMD /entrypoint.sh
