  # syntax=docker/dockerfile:1

FROM ubuntu


RUN apt-get -y update && apt-get -y install nginx

COPY default /etc/nginx/sites-available/default/

EXPOSE 8080

CMD [ "/usr/sbin/nginx", "-g", "daemon off;" ]
