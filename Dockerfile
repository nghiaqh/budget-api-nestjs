FROM node:10.16.0-alpine
WORKDIR /home/app
COPY . /home/app

CMD ["npm", "start"]