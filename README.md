# Node.js Docker Application

This repository contains a simple Node.js application that can be run inside a Docker container. Below are the steps to build a Docker image and run the application in a Docker container.

## Dockerfile Overview

```dockerfile
FROM node:22-alpine3.19

WORKDIR /app

EXPOSE 3000

COPY . .

RUN npm install

CMD [ "node", "index.js" ]
```

## Explanation
#### FROM: 
Specifies the base image, which is the official Node.js image based on Alpine Linux.

#### WORKDIR: 
Sets the working directory inside the container to /app.

#### EXPOSE: 
Exposes port 3000 on the container.
#### COPY: 
Copies the project files from the current directory to the container's working directory.

#### RUN: 
Installs the necessary Node.js dependencies using npm.

#### CMD: 
Specifies the command to run the Node.js application, which is node index.js.

## Building The Docker Image
To build the Docker image, navigate to the directory containing the Dockerfile and run the following command:

``` 
docker build -t [desired-image-name] .
```
replace -image-name with your esired container name

## Running the Docker Container
``` 
docker run -d -p 3000:3000  [desired-image-name]
```
replace [desired-image-name] with the name of your image

The <b>-d </b> flag runs the container in detached mode (in the background).
The <b>-p </b>  <b>3000:3000</b> option maps port <b>3000</b> on your local machine to port <b>3000</b> inside the container.

## Accessing the Application
Once the container is running, the application will be accessible at http://localhost:3000.

