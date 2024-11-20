# Use the Node 19 image as a base
FROM node:19-bullseye

# Set the working directory inside the container
WORKDIR /app

# Copy package files to install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install --legacy-peer-deps

# Copy the rest of the application files to the container
COPY . .

# Expose the port your application will run on (adjust the port number if needed)
EXPOSE 3000

# Command to build and start the application
CMD ["npm", "run", "dev"]

# Optional: This will be used if you want to build and serve the production version of the app
# CMD ["npm", "run", "build"] && ["npm", "run", "start"]
