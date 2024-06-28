FROM debian:bullseye

RUN apt update -y
RUN apt upgrade -y

RUN apt install mariadb-server -y

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.f/50-server.cnf

COPY tools/script.sh /home/

CMD ["sh", "/home/script.sh"]
