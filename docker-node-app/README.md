# build image
docker build . -t <image_name>

# run container
docker run -dp 9090:8080 express-app:v1.0

# exec into container
- what is in /app directory?
- how did it get there?
- are there unnecccessary content

# login to Private Registry (AWS ECR)
```sh
aws ecr get-login-password --region ap-southeast-1 | \
docker login --username AWS --password-stdin <AWS_ACCOUNT_ID>.dkr.ecr.ap-southeast-1.amazonaws.com
```

# Re-tag iamge
```sh
docker tag <image_name>:<image_tag> <image_name>:<image_tag> 
docker tag express-app:v1.0 <AWS_ACCOUNT_ID>.dkr.ecr.ap-southeast-1.amazonaws.com/mingzi-express_app:v1.0
```

# Push image into registry
```sh
docker push <AWS_ACCOUNT_ID>.dkr.ecr.ap-southeast-1.amazonaws.com/mingzi-express_app:v1.0
```
