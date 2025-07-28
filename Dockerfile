# Use Node.js version 16 as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /usr/src

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Copy the rest of the application code
COPY . .

# Install dependencies
RUN yarn install

# Expose port 3000 inside the container
EXPOSE 3000

# Command to start the application
CMD ["yarn", "start"]