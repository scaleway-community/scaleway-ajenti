## -*- docker-image-name: "scaleway/ajenti:latest" -*-
FROM scaleway/ubuntu:trusty
MAINTAINER Scaleway <opensource@scaleway.com> (@scaleway)


# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter


# Install ajenti
RUN wget http://repo.ajenti.org/debian/key -O- | apt-key add - \
 && echo "deb http://repo.ajenti.org/debian main main ubuntu" >> /etc/apt/sources.list.d/ajenti.list \
 && apt-get update \
 && apt-get install -y -q \
    ajenti \
 && apt-get clean


# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
