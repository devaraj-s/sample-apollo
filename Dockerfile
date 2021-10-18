FROM node:16-alpine3.14

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./


ENV NODE_ENV production

RUN npm ci --only=production


# Bundle app source
COPY . .

USER node
COPY --chown=node:node . /usr/src/app

# If you are building your code for production
# RUN npm ci --only=production

EXPOSE 3001
CMD [ "node", "app.js" ]

