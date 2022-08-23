# Source image
FROM node:10-alpine as builder
RUN apk --no-cache add curl
RUN apk add --no-cache bind-tools
RUN cat /etc/resolv.conf
RUN curl -s https://www.google.com > /dev/null; echo "Curl result for google: $?"
RUN curl -s https://github.com/sass/node-sass/releases/download/v4.14.1/linux_musl-x64-64_binding.node > /dev/null; echo "Curl result for github WITHOUT www: $?"
RUN curl -s https://www.github.com/sass/node-sass/releases/download/v4.14.1/linux_musl-x64-64_binding.node > /dev/null; echo "Curl result for github WITH www: $?"
