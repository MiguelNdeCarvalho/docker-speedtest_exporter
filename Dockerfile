FROM alpine:3.12

LABEL maintainer="MiguelNdeCarvalho <geral@miguelndecarvalho.pt>"

ENV ARCH=amd64

RUN apk upgrade --no-cache \
 && apk add --no-cache \
 	curl \
	grep

COPY rootfs .

RUN /setup.sh

EXPOSE 9112

CMD ["/app/speedtest_exporter"]

HEALTHCHECK --timeout=10s CMD curl --silent --fail http://127.0.0.1:9112/metrics
