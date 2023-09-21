# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Create and set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the Next.js app
RUN npm run build

# Expose the port your Next.js app will run on (usually 3000)
EXPOSE 3000

# Start the Next.js app
CMD ["npm", "start"]
