FROM node:18

ENV INSTALL_PATH /usr/src/app
RUN mkdir -p $INSTALL_PATH

COPY index.js $INSTALL_PATH
COPY package.json $INSTALL_PATH
ADD package.json $INSTALL_PATH

WORKDIR $INSTALL_PATH
RUN npm install --silent

EXPOSE 8080

CMD ["npm", "install"]

CMD ["npm", "start"]
