FROM ubuntu:16.04

MAINTAINER Jose María Flores Galán

RUN apt-get update && apt-get install -y nginx

COPY nginx.html /var/www/html

RUN mkdir /var/www/html/docker

COPY index.html /var/www/html/docker

COPY default /etc/nginx/sites-enabled/default

RUN chown -R www-data:www-data /var/www/html

EXPOSE 8080

CMD nginx -g 'daemon off;'
