FROM debian:bullseye

RUN apt install nginx -y
RUN apt install vim -y
RUN apt install curl -y

RUN apt install OpenSSL -y
RUN mkdir -p /etc/nginx/ssl
RUN openSSL req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=ARA/L=LYON/0=42/0U=42/CN=cprojean.42lyon.fr/UID=cprojean"
