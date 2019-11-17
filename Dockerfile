FROM alpine
# author: liuz "llzmac@163.com"

RUN apk add --no-cache git bash openjdk8-jre \
    && git clone https://github.com/SilentGo/lanproxy-client.git /lanproxy-client \
    && apk del git

ENTRYPOINT ["/lanproxy-client/init.sh"]

CMD ["/bin/bash"]
