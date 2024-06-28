#!/bin/bash
service mariadb start
mysql -u root -p"PASSWORD" -e "CREATE DATABASE IF NOT EXISTS PASSWORD; \
          CREATE USER IF NOT EXISTS PASSWORD@'%' IDENTIFIED BY 'PASSWORD'; \
          GRANT ALL PRIVILEGES ON PASSWORD.* TO PASSWORD@'%' IDENTIFIED BY 'PASSWORD';
          ALTER USER root@'localhost' IDENTIFIED BY 'PASSWORD'; \
          FLUSH PRIVILEGES;"
mysqladmin -u root -p"PASSWORD" shutdown
exec mysqld_safe
