FROM centos:latest
MAINTAINER sardarmedi@gmail.com
RUN yum install -y httpd \
 zip\
 unzip
ADD https://www.free-css.com/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/https", "-D", "FOREGROUND"]
EXPOSE 80