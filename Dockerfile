#Original Docker image of node
FROM node:10

#Create app directory
WORKDIR /usr/src/app

#Install app dependencies for both package.json and package-lock.json
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

#Bundle app source code to docker container's image
COPY . .

EXPOSE 8080

#Run the node.js app
CMD ["node", "server.js"]