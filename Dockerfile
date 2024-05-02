FROM ubuntu:22.04

RUN apt update
RUN apt install -y nginx

COPY index.html /var/www/html/
COPY titelbild.jpg /var/www/html/

CMD nginx -g 'daemon off;'