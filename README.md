docker-shadowsocks-polipo
==================

This Dockerfile builds an image with [sslocal](https://github.com/shadowsocks/shadowsocks) and [polipo](https://github.com/jech/polipo). Based on Debian 7.9 image. 

You can pull it from [docker hub](https://hub.docker.com/r/liaoxiaorong/shadowsocks-polipo/)
 and [163 hub](https://c.163.com/hub#/m/repository/?repoId=48075).

Quick Start
-----------

Run from docker hub:

    docker run -d -p 127.0.0.1:8123:8123 -e SERVER_ADDR=$SERVER_ADDR -e SERVER_PORT=$SERVER_PORT -e PASSWORD=$SS_PASSWORD liaoxiaorong/shadowsocks-polipo

Run from China mirror(163 docker hub):

    docker run -d -p 127.0.0.1:8123:8123 -e SERVER_ADDR=$SERVER_ADDR -e SERVER_PORT=$SERVER_PORT -e PASSWORD=$SS_PASSWORD hub.c.163.com/liaoxiaorong/shadowsocks-polipo

Test:

    https_proxy=127.0.0.1:8123 curl https://www.google.com/
