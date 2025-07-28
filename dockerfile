# Stage 1: Build the React app
FROM node:16-alpine AS build

WORKDIR /app

COPY package*.json ./
RUN npm install


COPY . .

#Run application
CMD ["npm", "start"]
