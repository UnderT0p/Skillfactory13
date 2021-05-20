FROM ubuntu:20.04

WORKDIR /tmp/
ENV SITE_URL=https://en.wikipedia.org
RUN apt-get update && apt-get install -y wget
COPY faviconDownload.sh /tmp/
CMD "/bin/bash" "faviconDownload.sh"