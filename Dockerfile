FROM node:24-alpine

WORKDIR /app

# Copy package.json (and package-lock.json if present) first
COPY package*.json ./

# Install dependencies now that package.json is inside /app
RUN npm install

# Copy the rest of your application files
COPY . .

EXPOSE 8080

CMD ["node", "index"]