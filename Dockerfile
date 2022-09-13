FROM ubuntu
LABEL maintainer="nikhil2584@gmail.com"

WORKDIR /root
RUN mkdir /usr/tomcat

RUN apt-get update && apt-get -y install apache2
EXPOSE 8888

ENTRYPOINT ["/usr/sbin/apachectl"]
CMD ["-D", "FOREGROUND"]
COPY index.html /usr/tomcat/www/html/index.html
VOLUME /var/www/html
