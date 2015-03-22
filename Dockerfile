FROM debian:latest
ENV DEBIAN_FRONTEND noninteractive

MAINTAINER Loris

# Install
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -qy --force-yes python-cheetah wget tar ca-certificates curl git-core
# apt clean
RUN apt-get clean &&\
  rm -rf /var/lib/apt/lists/* &&\
  rm -rf /tmp/*

RUN mkdir /opt/Sick-Beard
RUN git clone https://github.com/Dijkstra173/Sick-Beard.git /opt/Sick-Beard

EXPOSE 8081

# /data => config.ini /config => DB
VOLUME /data
VOLUME /config

ADD ./run.sh /run.sh
RUN sed -i -e 's/\r$//' /run.sh
RUN chmod u+x  /run.sh
CMD ["/run.sh"]
