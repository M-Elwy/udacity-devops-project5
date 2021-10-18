FROM ubuntu:18.04

ENTRYPOINT ["tail", "-f", "/dev/null"]

RUN apt-get update
RUN apt install -y curl nginx

ADD nginx.conf /etc/nginx/nginx.conf
ADD ./www /www

EXPOSE 80
CMD ["nginx"]