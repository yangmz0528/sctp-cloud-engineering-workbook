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