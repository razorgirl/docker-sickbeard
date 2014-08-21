## Base image to use
FROM ubuntu:14.04

## Maintainer info
MAINTAINER razorgirl <https://github.com/razorgirl>

## Update base image
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get dist-upgrade -y

## Install prerequisites
RUN apt-get install -y python python-cheetah git-core wget

## Install Sick Beard
RUN git clone git://github.com/midgetspy/Sick-Beard.git /opt/sickbeard

## Expose port
EXPOSE 8081

## Set working directory
WORKDIR /opt/sickbeard

## Run Couchpotato
ENTRYPOINT python SickBeard.py
