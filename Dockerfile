FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy app files
COPY package.json package-lock.json ./
RUN npm install 
COPY . .

# Expose port and run
EXPOSE 4000
CMD ["npm", "start"]


