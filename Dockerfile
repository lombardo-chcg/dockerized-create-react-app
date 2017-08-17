# start from a slim node base image
FROM node:alpine

# create directory for our project files
RUN mkdir src/

# copy over the node server code and our static react app content
COPY /server/main.js /src/server/main.js
COPY /server/package.json /src/server/package.json
COPY /build /src/server/build

# set the working directory
WORKDIR /src/server

# install dependencies for our express server
RUN npm install

# tell the docker container which port to listen to at runtime
EXPOSE 9000

# provide the command to start the server within the container
# this node process becomes PID 1 - the top of the Unix process tree inside our container
CMD node main.js
