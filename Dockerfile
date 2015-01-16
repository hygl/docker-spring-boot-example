FROM dockerfile/java:oracle-java8
MAINTAINER philipp.huegelmeyer@ble.de
EXPOSE 8080
ENV http_proxy http://httpproxy.service.ble.de:9090
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --force-yes  maven 
RUN mkdir -p /data/spring-rest
WORKDIR /data/spring-rest
