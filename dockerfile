FROM alpine:3.13.5
WORKDIR /var/
ENV SITE_URL=https://en.wikipedia.org
RUN apk update && apk add wget
COPY faviconDownload.sh /var/
CMD "/bin/sh" "faviconDownload.sh"