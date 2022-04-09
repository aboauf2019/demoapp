FROM nginx:latest
RUN mkdir -p /var/www/ 
COPY ./html/ /var/www/html/
RUN chown -R nginx:nginx /var/www/html/
WORKDIR /etc/nginx/conf.d
COPY ./default.conf ./
EXPOSE 80
