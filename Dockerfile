#Base Image node:12.18.4-alpine
FROM node:14


#Set working directory to /app
WORKDIR /usr/src/app


#Copy package.json in the image
COPY package.json ./



#Run npm install command
RUN npm install


#Copy the app
COPY . ./

EXPOSE 3000

#Start the app
CMD ["node", "./src/server.js"]
