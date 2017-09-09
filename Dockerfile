FROM node:7

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json package-lock.json ./

RUN npm install

# Bundle app source
COPY . .

RUN npm run build -- --prod

EXPOSE 8080
CMD [ "npm", "run", "prod" ]