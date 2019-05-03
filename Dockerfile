#Specify a base Image

FROM node:alpine

WORKDIR /usr/app
#dependencies

COPY ./package.json ./
RUN npm install
COPY ./ ./

#command

CMD ["npm" , "start"]
