FROM node:10
RUN mkdir -p /root/res
WORKDIR /root/res
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 4003
