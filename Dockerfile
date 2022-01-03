FROM alpine:latest

ADD entry3point.sh /opt/entry3point.sh

RUN apk add --no-cache --virtual .build-deps ca-certificates curl \
 && chmod +x /opt/entry3point.sh

ENTRYPOINT ["sh", "-c", "/opt/entry3point.sh"]
