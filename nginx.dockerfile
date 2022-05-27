FROM nginx:stable-alpine

ENV NGINXUSER=admin
ENV NGINXGROUP=admin

RUN mkdir -p /var/www/html/public

COPY nginx/default.conf /etc/nginx/conf.d/default.conf

RUN sed -i "s/user www-data/user ${NGINXUSER}/g" /etc/nginx/nginx.conf

RUN adduser -g ${NGINXGROUP} -D ${NGINXUSER}