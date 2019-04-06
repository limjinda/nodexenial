FROM ubuntu:xenial

ENV NODE_VERSION 8.11.3
ENV NPM_VERSION 6.9.0

RUN apt-get update && apt-get install -y 
RUN apt-get install build-essential libssl-dev -y
RUN apt-get install curl -y
RUN cd ~ \ 
  && curl -sL https://deb.nodesource.com/setup_8.x -o nodesource_setup.sh \
  && bash nodesource_setup.sh \
  && apt-get install nodejs -y

RUN nodejs -v
RUN npm -v
