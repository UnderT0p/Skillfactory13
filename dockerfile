FROM Alpine
RUN apt-get update && apt-get install -y wget
WORKDIR /tmp/
ENV SITE_URL=https://en.wikipedia.org
COPY faviconDownload.sh /tmp/
CMD "/bin/bash" "faviconDownload.sh"