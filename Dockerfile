# vim: set filetype=dockerfile
FROM limed/ubuntu-base:latest
MAINTAINER limed@sudoers.org

ENV DEBIAN_FRONTEND="noninteractive"

RUN apt-get -q update && \
    apt-get install -qy --force-yes python-cheetah \
                                    python-openssl \
                                    git \
    && apt-get -y autoremove \
    && apt-get -y clean \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/*

# Create app and data directory
RUN mkdir -p /app && \
    mkdir -p /data/sickbeard

# Clone sickbeard into app directory
RUN git clone https://github.com/midgetspy/Sick-Beard.git /app

VOLUME /app
VOLUME /data/sickbeard

EXPOSE 8081
