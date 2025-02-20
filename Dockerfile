# Use an official Node.js runtime as a parent image
FROM node:16

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy the application files
COPY . .

# Expose the port
EXPOSE 3000

# Start the application
CMD ["node", "server.js"]
