FROM ubuntu:latest

LABEL maintainer="matthewluishuerta@gmail.com"

# prevents errors associated with responses such as "apt-get -y"

ARG DEBIAN_FRONTEND=noninteractive

RUN mkdir /src

RUN apt-get update && \
      apt-get -y install apt-utils

RUN apt-get -y install sudo perl make g++ git wget

RUN useradd -Ms /bin/bash irc_admin 

# RUN usermod -p password irc_admin

RUN usermod -aG sudo irc_admin

RUN echo "irc_admin:password" | chpasswd

USER irc_admin

COPY install.sh /src

COPY inspircd.conf /src

WORKDIR /src

EXPOSE 6697

ENTRYPOINT ["./install.sh"]
