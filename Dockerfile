FROM node:16


WORKDIR /usr/src/app

COPY package*.json ./
COPY index.html ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 80
CMD [ "node", "server.js" ]
