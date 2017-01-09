# This is a comment
FROM hub.c.163.com/public/debian:7.9-common
MAINTAINER Xiaorong Liao <xiaorongliao@gmail.com>
RUN apt-get update && apt-get install -y python-pip polipo supervisor
RUN pip install shadowsocks

RUN mkdir -p /opt
COPY ./start.sh /opt/start.sh
RUN chmod +x /opt/start.sh
COPY ./init.sh /opt/init.sh
COPY ./supervisord.conf /etc/supervisor/conf.d/

EXPOSE 8123
ENTRYPOINT ["/opt/start.sh"]