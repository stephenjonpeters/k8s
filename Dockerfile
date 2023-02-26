FROM node:16
ARG DEPLOY_COLOR
WORKDIR /usr/src/app

COPY package*.json ./
COPY $DEPLOY_COLOR-index.html ./index.html

RUN npm install

# Bundle app source
COPY . .

EXPOSE 80
CMD [ "node", "server.js" ]
