FROM node:22-alpine3.19

WORKDIR /app

EXPOSE 3000

COPY . .

RUN npm install

CMD [ "node", "index.js" ]