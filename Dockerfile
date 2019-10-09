FROM node:8

WORKDIR ./app

COPY package*.json ./

RUN npm install
RUN npm i -g @adonisjs/cli

COPY . .

EXPOSE 8080
EXPOSE 5432
CMD ["npm","start"]