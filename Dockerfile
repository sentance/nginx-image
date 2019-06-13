FROM nginx:alpine

RUN addgroup -g 1000 -S www-data \
 && adduser -u 1000 -D -S -G www-data www-data

COPY . /etc/nginx/
RUN mkdir /var/cache/fpm
EXPOSE 8001