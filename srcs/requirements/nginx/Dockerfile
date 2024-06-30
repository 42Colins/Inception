FROM debian:bullseye

RUN apt update
RUN apt upgrade -y
RUN apt install nginx -y
RUN apt install vim -y
RUN apt install curl -y

RUN apt install openssl -y
RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=ARA/L=LYON/0=42/0U=42/CN=cprojean.42lyon.fr/UID=cprojean"
RUN mkdir -p /var/run/nginx

#COPY conf/nginx.conf /etc/nginx/sites-enabled/
RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html

#CMD [ "nginx","-g","daemon off;" ]
