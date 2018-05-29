FROM alpine:latest

ENV CONFIG_JSON1={\"log\":{\"access\":\"\",\"error\":\"\",\"loglevel\":\"warning\"},\"inbound\":{\"protocol\":\"vmess\",\"port\": 
ENV CONFIG_JSON2=,\"settings\":{\"clients\":[{\"id\":\" 
ENV CONFIG_JSON3=\",\"alterId\":64}]},\"streamSettings\":{\"network\":\"ws\"}},\"inboundDetour\":[],\"outbound\":{\"protocol\":\"freedom\",\"settings\":{}}} 

RUN mkdir -m 777 /v2raybin 

ADD https://storage.googleapis.com/v2ray-docker/v2ray /v2raybin
ADD https://storage.googleapis.com/v2ray-docker/v2ctl /v2raybin

ADD entrypoint.sh /entrypoint.sh

RUN set -ex && \
    apk --no-cache add ca-certificates && \
    mkdir /var/log/v2ray/ &&\
    chmod +x /v2raybin/v2ctl &&\
    chmod +x /v2raybin/v2ray &&\
    chmod +x /entrypoint.sh 

CMD /entrypoint.sh
