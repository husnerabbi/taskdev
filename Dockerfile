# get Docker Image
FROM node:10

# Create app directory
WORKDIR /usr/app/

# Install app dependencies
COPY package*.json ./

# Production use the RUN npm install --only=production
RUN npm install

# Bundle app source
COPY . .
EXPOSE 8083
CMD [ "npm", "start" ]
