FROM node:18
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
ENV MODEL_URL='https://storage.googleapis.com/dicoding-submission-nur/model-in-prod/model.json'
CMD ["npm", "start"]
