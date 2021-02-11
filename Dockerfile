#---------------------------------------------------------------------------
# Dockefile to build Docker Image of Apache WebServer running on Ubuntu
#
# Made by Denis Astahov ADV-IT  13-March-2019
#---------------------------------------------------------------------------

FROM ubuntu:16.04

RUN apt-get -y update
RUN apt-get -y install apache2
RUN apt-get -y install wget
RUN cd /var/www/html/ && wget -mkEpnp https://www.chiark.greenend.org.uk/~sgtatham/bugs-ru.html
RUN echo -e '<VirtualHost *:80>\n    ServerAdmin webmaster@localhost\n    DocumentRoot /var/www/html/www.chiark.greenend.org.uk/~sgtatham\n</VirtualHost>' > /etc/apache2/sites-available/000-default.conf


CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
EXPOSE 80
