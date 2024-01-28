# Use an official Node.js runtime as the base image
FROM node:14-alpine as build

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json /app

# Install dependencies
RUN npm install --development 

# Copy the built React application files to the working directory
COPY . /app

# Build the React application
ENTRYPOINT ["npm","run","cosmos"]
