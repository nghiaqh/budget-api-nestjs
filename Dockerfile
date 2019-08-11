FROM node:10.16.0-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
COPY yarn.lock ./
COPY tsconfig.json ./
COPY tsconfig.*.json ./
RUN yarn install

# Bundle app source
COPY . .
RUN yarn build

# Map app to port 3000
EXPOSE 3000

CMD ["yarn", "start:prod"]