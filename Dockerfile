FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update --force-yes && \
  apt-get -yq install mysql-server --force-yes && \
  rm -rf /var/lib/apt/lists/*

ADD internetconfig.cnf /etc/mysql/conf.d/internetconfig.cnf

ADD sqlfile.sh /sqlfile.sh
RUN chmod 755 /*.sh
ENTRYPOINT ["/sqlfile.sh"]

VOLUME $(pwd)/volume:/var/lib/mysql
EXPOSE 3306
CMD ["mysqld_safe"]

