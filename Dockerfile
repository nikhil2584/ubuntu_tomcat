FROM ubuntu:18.10
LABEL maintainer="nikhil2584@gmail.com"

RUN apt-get update && apt-get -y install apache2
EXPOSE 8082