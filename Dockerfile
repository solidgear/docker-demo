FROM ubuntu:14.04
MAINTAINER Grant Croker <gcroker+docker@solidgear.es>
RUN apt-get update && apt-get install -y apache2
COPY hello_world.html /var/www/html/
CMD ["/usr/sbin/apache2ctl", "-e", "info", "-DFOREGROUND"]