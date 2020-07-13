# Overview
* Docker is an open-source tool that gives you the ability to build containers for your apps.
* A container includes an operating system, libraries, and everything you need to run your application.
* A container (the application and its entire environment and dependencies) can be deployed onto any machine.
* Containers running on a single machine share that machine’s operating system kernel. They start instantly and use less computational power and RAM.
* Images are built out of filesystem layers, and are able to share common files. This minimizes the space these images take up on disk, and make these images a lot faster to download.
* Docker containers are based on open standards, and run on all major *nix distributions (Unix, Linux, etc. - including MacOS), Microsoft Windows, and on any infrastructure including VMs, bare-metal, and in the cloud.
* Docker containers isolate applications from one another and from the underlying infrastructure. Docker provides a strong default isolation, so you can limit any problems with your app to a single container instead of an entire machine.
* Containerized software will always run the same, regardless of the environment.
* Containers isolate software from its surroundings. That is, the differences between development and staging environments.
* Ultimately, Docker helps reduce conflicts between teams running different software on the same infrastructure.

BUILD
* docker build -t superawesomecontainer . (period is important)
* // Successfully built 61c0113de606
* // Successfully tagged superawesomecontainer:latest

RUN
* docker run -it superawesomecontainer // i = interactive mode; t = terminal
* docker exec -it <container-id> bash
* docker run -it -p 3000:3000 superawesomecontainer // expose container port to local host port
* docker compose up // run all services in compose file
* docker compose down // stop all services in compose file
* docker compose up build // first time - build all services in docker-compose file

LIST
* docker ps // list running
* docker ps -a // list running including stopped containers

COPY
* COPY ./ ./ // copy all at ./ and paste into ./

STOP ALL RUNNING CONTAINERS
* docker ps -aq
* docker stop $(docker ps -aq)
* docker stop <container-id>

DOCKERFILE EXAMPLE:
# Parent container
FROM node:8.11.1

# Create app directory
RUN mkdir -p /usr/src/smart-brain-api
WORKDIR /usr/src/smart-brain-api // the directory where we want to work

# Install app dependencies
COPY package.json /usr/src/smart-brain-api
RUN npm install

# Bundle app source
COPY . /usr/src/smart-brain-api

# Build arguments
ARG NODE_VERSION=8.11.1

# Environment
ENV NODE_VERSION $NODE_VERSION