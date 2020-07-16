FROM debian:stretch
LABEL maintainer="Jemcash Developers <dev@jempay.org>"
LABEL description="Dockerised JemcashCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
