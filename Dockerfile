FROM nginx

COPY /src/index.php /var/www

EXPOSE 80 433
