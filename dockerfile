# Base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies (use --legacy-peer-deps to fix conflicts)
RUN npm install --legacy-peer-deps

# Copy the rest of your app
COPY . .

# Build the app (for Next.js)
RUN npm run build

# Expose the default Next.js port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
