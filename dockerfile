FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# If you are building your code for production
# RUN npm ci --only=production
RUN npm install

# Build Production Docs
CMD [ "npm", "run build" ]