FROM ubuntu
LABEL maintainer="nikhil2584@gmail.com"

WORKDIR /root
RUN mkdir /usr/tomcat

RUN apt-get update && apt-get -y install apache2
EXPOSE 8888

ENTRYPOINT ["/usr/sbin/apache2"]
CMD ["start", "-D", "FOREGROUND"]
COPY index.html /var/www/html/
VOLUME /var/www/html
