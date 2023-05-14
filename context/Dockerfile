FROM debian:bookworm-slim

LABEL maintainer="ethitter"
LABEL version="1.1"

RUN \
    sed -i -e's/ main/ main contrib non-free/g' /etc/apt/sources.list.d/debian.sources \
    && apt-get -q update \
    && apt-get -y --no-install-recommends install \
    nut snmp snmpd snmp-mibs-downloader curl \
    && apt-get autoremove -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 3493 161

COPY entrypoint ups-status.sh /usr/local/bin/
ENTRYPOINT ["entrypoint"]
