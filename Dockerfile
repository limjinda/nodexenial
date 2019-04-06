FROM ubuntu:xenial

RUN apt-get update && apt-get install -y 
RUN apt-get install build-essential libssl-dev -y
RUN apt-get install curl -y
RUN cd ~ \ 
  && curl -sL https://deb.nodesource.com/setup_8.x -o nodesource_setup.sh \
  && bash nodesource_setup.sh \
  && apt-get install nodejs -y
