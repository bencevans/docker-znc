FROM ubuntu:precise
MAINTAINER Ben Evans "ben@bensbit.co.uk"


RUN adduser -q --disabled-password --disabled-login znc

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -q -y build-essential wget sudo

RUN wget http://znc.in/releases/znc-1.0.tar.gz
RUN tar xzf znc-1.0.tar.gz
RUN cd znc-1.0 && ./configure && make && make install

USER znc

EXPOSE 6667:6667

ADD ./run_server /
RUN chmod +x /run_server

RUN mkdir -p //.znc/configs
ADD znc.conf //.znc/configs/znc.conf

CMD ["/run_server"]