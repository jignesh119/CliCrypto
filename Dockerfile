# to run the container-> docker run --rm -it --name clicrypto clicrypto
FROM node:21-alpine

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

RUN npm install

ENTRYPOINT [ "./src/cli.js" ]
