FROM node:latest

COPY package.json /bundle/package.json
WORKDIR /bundle

RUN npm install
RUN npm rebuild node-sass
RUN npm run clean

COPY . /bundle


FROM nginx:alpine

COPY public /usr/share/nginx/html

EXPOSE 80
