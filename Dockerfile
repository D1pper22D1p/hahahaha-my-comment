FROM node:alpine

WORKDIR /app

COPY src/index.js src/package.json src/package-lock.json ./

RUN npm install

EXPOSE 5050

ENTRYPOINT ["node", "index.js"]