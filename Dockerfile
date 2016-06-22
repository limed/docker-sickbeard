# vim: set filetype=dockerfile
FROM limed/ubuntu-base:latest
MAINTAINER limed@sudoers.org

ENV DEBIAN_FRONTEND="noninteractive"

RUN apt-get -q update && \
    apt-get install -qy --force-yes python-cheetah \
                                    python-openssl \
    && apt-get -y autoremove \
    && apt-get -y clean \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/*

CMD [ "mkdir -p /app" ]

VOLUME /app

EXPOSE 8081
