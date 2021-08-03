FROM centos:latest
RUN yum install -y httpd \
  zip \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page269/affiliates.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip affiliates.zip
RUN cp -rvf affiliates/*
RUN rm -rf affiliates affiliates.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
