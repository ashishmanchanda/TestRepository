# Source image
FROM node:10-alpine as builder
RUN apk --no-cache add curl
RUN curl https://www.google.com/
RUN cat /etc/resolv.conf
RUN curl https://github.com/sass/node-sass/releases/download/v4.14.1/linux_musl-x64-64_binding.node
RUN sudo echo nameserver 8.8.8.8 > /etc/resolv.conf
RUN cat /etc/resolv.conf
RUN curl https://github.com/sass/node-sass/releases/download/v4.14.1/linux_musl-x64-64_binding.node
