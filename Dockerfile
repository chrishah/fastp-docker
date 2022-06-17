FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true
RUN apt-get update && \
	apt-get install -y \
		build-essential \
		wget

WORKDIR /usr/src

#download fastp binary
RUN mkdir fastp && cd fastp && wget http://opengene.org/fastp/fastp.0.23.1 && mv fastp.0.23.1 fastp && chmod a+x ./fastp

ENV PATH="/usr/src/fastp/:$PATH"

