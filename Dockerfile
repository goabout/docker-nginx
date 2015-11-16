FROM nginx

MAINTAINER Go About <tech@goabout.com>

RUN openssl dhparam -out /etc/ssl/dh_2048.pem 2048
RUN mkdir -p /var/spool/nginx/client_temp

COPY nginx.conf /etc/nginx/nginx.conf
