FROM ubuntu:20.04
LABEL maintainer="Ye Lin Aung <me@yelinaung.com>"

# using ARG here instead of ENV
# ENV will persist the value throughout. i.e evern when the container is running
# ARG will only persist during the build
ARG DEBIAN_FRONTEND=noninteractive
ARG DEBCONF_NONINTERACTIVE_SEEN=true
ENV TZ=Asia/Singapore
RUN apt-get update && apt-get -y upgrade && apt-get install -y python3-dev dnsutils \
    libffi-dev libssl-dev python3-pip libpq-dev libffi-dev tzdata && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
    pip3 install --no-cache-dir pip==21.2.4 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
