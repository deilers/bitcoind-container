FROM ubuntu:focal

WORKDIR /tmp

COPY setup_tor.sh .

RUN useradd -ms /usr/sbin/nologin bitcoin

RUN chmod +x ./setup_tor.sh
RUN ./setup_tor.sh