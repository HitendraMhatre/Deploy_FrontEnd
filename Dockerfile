FROM node:12-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install --f

RUN npm install -f react-responsive-carousel mdb-react-ui-kit react-toastify @emotion/styled react-otp-input

COPY . .

# Create the directory for .eslintcache and change ownership
RUN mkdir -p /app/node_modules/.cache && chown -R node:node /app/node_modules/.cache && chmod -R 777 /app/node_modules/.cache

# Change user back to node
USER node

CMD [ "npm", "start" ]
