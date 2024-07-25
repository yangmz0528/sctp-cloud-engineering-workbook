# docker-python

# Introduction

This repository is about building a Flash application to be hosted on a Docker container.pip

```
# Build a docker image locally
sudo  docker build -t flask-app .

# Listing your built images
sudo docker images

# Starting your local container with port mapping
sudo docker run -d -p 8080:8080 flask-app

# List all your containers (Running and Stopping)
sudo docker ps -a

# To stop and remove your container
sudo docker stop <Container ID>
sudo docker rm <Container ID>

# To remove docker images
sudo docker rmi <Image ID>

# go into the container
docker exec -it <Container ID> sh

# shortcut for stopping and removing all docker images
docker rm -f $(docker ps -aq)
```