# Getting an official node.js image from docker hub
FROM node:14-alpine

# Setting up a working directory of the react app inside a container
WORKDIR /usr/src/app

# copying package package lock.json and package.json files to the working directory
COPY package*.json ./

# installing the dependencies
RUN npm install

# Copying the rest of the other file in the source code
COPY . .

# To nuild the app
RUN npm run build

# Exposing the port the app will run on
EXPOSE 3000

# To start the app
CMD ["npm", "start"]