FROM debian:bullseye

RUN apt update -y
RUN apt upgrade -y

RUN apt install mariadb-server -y

COPY conf/50-server.conf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY tools/script.sh ./script.sh

CMD ["sh", "./script.sh"]
