#!/bin/bash

#apt-get -y install sudo

#apt-get -y install git

#apt-get -y install perl

#apt-get -y install make

#apt-get -y install g++

#apt-get -y install wget

sudo wget https://github.com/inspircd/inspircd/archive/v2.0.25.tar.gz

sudo tar xvf ./v2.0.25.tar.gz

cd inspircd-2.0.25

sudo perl ./configure

sudo make INSTUID=irc_admin install

mv inspircd.conf /src/inspircd-2.0.25/run/conf



