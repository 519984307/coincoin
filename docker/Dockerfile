FROM debian:stretch
LABEL maintainer="CoinCoin Developers <hunter@blazegeek.com>"
LABEL description="Dockerised CoinCoin, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
