FROM ubuntu:20.04
MAINTAINER pep3 <eduardo.rojas@roit.cl>

ENV DEBIAN_FRONTEND nointeractive

ARG DOMAIN
ARG DB_NAME
ARG DB_USER
ARG DB_PASS

ENV DOMAIN=${DOMAIN}
ENV DB_NAME=${DB_NAME}
ENV DB_USER=${DB_USER}
ENV DB_PASS=${DB_PASS}

RUN apt-get update -y && apt-get upgrade -y && apt-get autoremove -y && \
#    apt-get install -y systemd systemd-sysv net-tools git curl wget iputils-ping zip rar vim nano && \
    apt-get install -y zip vim nano wget && \
    apt-get autoclean -y &&\
    mkdir gophish

WORKDIR /root/gophish/

RUN wget -q https://github.com/gophish/gophish/releases/download/v0.10.1/gophish-v0.10.1-linux-64bit.zip && \
    unzip gophish-v0.10.1-linux-64bit.zip && \
    chmod +x gophish && \
    rm gophish-v0.10.1-linux-64bit.zip

COPY config.sh .
COPY run.sh .
RUN chmod +x config.sh run.sh

ENTRYPOINT ./run.sh

EXPOSE 80
EXPOSE 443
EXPOSE 3333
