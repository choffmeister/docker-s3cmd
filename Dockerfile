FROM alpine:3.8

ENV S3CMD_VERSION 2.0.1

RUN apk add --update --no-cache curl ca-certificates python py-dateutil py-magic
RUN mkdir -p /opt \
 && curl -sL https://github.com/s3tools/s3cmd/releases/download/v${S3CMD_VERSION}/s3cmd-${S3CMD_VERSION}.tar.gz -o /opt/s3cmd-${S3CMD_VERSION}.tar.gz \
 && cd /opt \
 && tar xfvz s3cmd-${S3CMD_VERSION}.tar.gz \
 && rm s3cmd-${S3CMD_VERSION}.tar.gz \
 && ln -s /opt/s3cmd-${S3CMD_VERSION}/s3cmd /usr/bin/s3cmd

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
