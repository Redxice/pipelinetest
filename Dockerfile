FROM nginx

COPY reporter /var/www
COPY site.conf /etc/nginx/conf.d/site.conf
RUN rm /etc/nginx/conf.d/default.conf && chown -R laradock:laradock /var/www && su laradock && npm install && npm run production

EXPOSE 80 433