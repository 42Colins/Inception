FROM debian:bullseye

RUN apt update
RUN apt upgrade -y
RUN apt install nginx -y

COPY conf/nginx.conf /etc/nginx/sites-enabled

RUN mkdir -p /etc/nginx/ssl
RUN apt install openssl -y
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=ARA/L=LYON/0=42/0U=42/CN=cprojean.42lyon.fr/UID=cprojean"

CMD [ "nginx","-g","daemon off;" ]
