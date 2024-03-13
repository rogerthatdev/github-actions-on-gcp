# Choose the Node.js LTS (Long Term Support) version
FROM node:18

# Set the working directory in the Docker container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies in the Docker container
RUN npm install

# Copy the rest of your app's source code to the working directory
COPY . .

# Build the Next.js app
RUN npm run build

# Expose port 3000 to be able to access the app
EXPOSE 3000

# Start the app
CMD ["npm", "start"]