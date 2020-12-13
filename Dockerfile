FROM node:12-alpine
WORKDIR /app
COPY package.json /app
RUN npm i
COPY . /app
EXPOSE 3000
CMD ["npm", "start"]
# docker build -t docker-react .
# docker run -it -v ${PWD}:/app -v /app/node_modules -p 3000:3000 docker-react
# docker run -it -e CHOKIDAR_USEPOLLING=true -v ${PWD}:/app -v /app/node_modules -p 3000:3000 docker-react
