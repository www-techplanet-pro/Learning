
FROM ubuntu:16.04

RUN apt-get -y update
RUN apt-get -y install apache2
RUN apt-get -y install wget
RUN cd /var/www/html/ && wget -mkEpnp --reject-regex "\@" https://www.chiark.greenend.org.uk/~sgtatham/bugs-ru.html
RUN echo '<VirtualHost *:80>\n    ServerAdmin webmaster@localhost\n    DocumentRoot /var/www/html/www.chiark.greenend.org.uk/~sgtatham\n    DirectoryIndex bugs-ru.html\n</VirtualHost>' > /etc/apache2/sites-available/000-default.conf


CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
EXPOSE 80
