FROM aflplusplus/aflplusplus:latest
WORKDIR /opt
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Moscow
RUN apt-get update
RUN apt-get install libpcap-dev -y
CMD ["/opt/build.sh"]