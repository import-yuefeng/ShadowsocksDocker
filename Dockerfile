FROM ubuntu:16.04
MAINTAINER Cat.1 "zhuyuefeng0@gmail.com"
RUN apt-get update
RUN apt-get install -y python-pip
RUN pip install shadowsocks
EXPOSE 433
RUN mkdir -p /etc/shadowsocks/
# ENTRYPOINT ["ssserver"]
# CMD ssserver -c /etc/shadowsocks/shadowsocks.json


