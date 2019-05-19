FROM node:10.15-alpine

RUN apk add --no-cache \
    python python-dev \
    build-base cairo-dev cairo cairo-tools libpng-dev

RUN npm -g config set user root && \
  npm install -g @akashic/bmpfont-generator@3.2.4

RUN mkdir /bmpfont-generator
WORKDIR /bmpfont-generator
