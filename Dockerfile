FROM debian
MAINTAINER Juan Varela "varelajuanmartin@gmail.com"
RUN apt-get update && apt-get install -y apache2 && apt-get clean && rm -rf /var/lib/apt/lists/*
ADD public.html /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/apache2ct1", "-D", "FOREGROUND"]