FROM ubuntu:focal

WORKDIR /tmp

RUN useradd -ms /usr/sbin/nologin bitcoin

COPY setup_tor.sh .
RUN chmod +x ./setup_tor.sh
RUN ./setup_tor.sh

COPY setup_btc.sh .
RUN chmod +x ./setup_btc.sh
RUN ./setup_btc.sh