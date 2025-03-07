# syntax=docker/dockerfile:1
FROM node:19-bullseye
ENV NODE_ENV=production
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install && node index.js
EXPOSE 8000
COPY . .
CMD [ "npm", "start" ]
