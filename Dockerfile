FROM debian:buster-slim
MAINTAINER Juan Varela "varelajuanmartin@gmail.com"
RUN apt-get update && apt-get install -y apache2
COPY index.html /var/www/html/
CMD ["/usr/sbin/apache2ct1", "-D", "FOREGROUND"]