FROM node:latest

COPY package.json /bundle/package.json
WORKDIR /bundle

RUN npm install
RUN npm rebuild node-sass
RUN npm run clean

COPY . /bundle

