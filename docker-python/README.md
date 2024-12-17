# docker-python

# Introduction

This repository is about building a Flash application to be hosted on a Docker container.pip

```
# Build a docker image locally
docker build -t flask-app .

# Listing your built images
docker images

# Starting your local container with port mapping
docker run -d -p 8080:8080 flask-app
docker run -it image_id /bin/bash

# List all your containers (Running and Stopping)
docker ps -a

# To stop and remove your container
docker stop <Container ID>
docker rm <Container ID>

# To remove docker images
docker rmi <Image ID>

# go into the container
docker exec -it <Container ID> sh
docker exec -it <Container ID> /bin/bash

# display all running processes
ps aux

# shortcut for stopping and removing all containers
# -f to force the removal of running containers
docker stop -f $(docker ps -q)
docker rm -f $(docker ps -q)
```

# Docker directives
Some important ones:
- COPY: Copy files from your host into Docker image
- WORKDIR: Specify a default directory to execute commands from
- CMD: Specify a default command to run
- ENV: Specify a default environment variable
- EXPOSE: Expose a port by default
- ARG: Specify a build-time argument (for more configurable, advanced builds)

# Docker Exercise

## Changing Images
```
# Start the container with /bin/bash
docker run -it ubuntu:16.04 /bin/bash

# Try running `ping` in the terminal
ping google.com

# update software list and install iputils-ping which contains `ping`
apt-get update
apt-get install iputils-ping

# Exit container and save this as a new image
docker ps -a
docker commit --help
docker commit -a 'authour name' -m 'message' <container_id>/<tag>