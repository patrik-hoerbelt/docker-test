# Create image based on the official Node 8 LTS image from dockerhub
FROM node:8.11.1

# Create a directory where our app will be placed
RUN mkdir -p /data

# Change directory so that our commands run inside this new directory
WORKDIR /data

# Copy dependency definitions
COPY package.json /data

# Install dependecies
RUN npm install

# Rebuild node-sass
RUN npm rebuild node-sass --force
