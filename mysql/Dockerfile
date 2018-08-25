FROM ubuntu:16.04

MAINTAINER Jose María Flores Galán


ENV DEBIAN_FRONTEND noninteractive
ENV MYSQL_ROOT_PASSWORD=mysql
ENV MYSQL_DATABASE=prueba
ENV MYSQL_USER=docker
ENV MYSQL_PASSWORD=mysql

RUN apt-get update && \
  apt-get -yq install mysql-server && \
  rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/run/mysqld
RUN chown mysql:mysql /var/run/mysqld


ADD init.sh /init.sh
RUN chmod 755 /*.sh

ENTRYPOINT ["/init.sh"]

EXPOSE 3306

CMD ["mysqld_safe"]

