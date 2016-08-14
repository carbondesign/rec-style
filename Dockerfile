FROM node:latest
USER root
COPY package.json /bundle/package.json
WORKDIR /bundle

RUN npm install sudo
RUN npm rebuild node-sass
RUN npm run clean

COPY . /bundle

