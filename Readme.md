# Build Laravel docker image for production and push it on [Docker Hub](https://hub.docker.com/)

### Requirements

Install [Docker](https://docs.docker.com/engine/install/) on your OS.

### Create an account on [Docker Hub](https://hub.docker.com/signup)

### Login to your Docker Hub account with the docker cli

Run this command ```docker login``` to login to your Docker Hub account with the cli.

### We are using these following things to run our Laravel app for production:

- nginx
- php8.1-fpm
- supervisor

### Copy these files in your laravel project root folder

- Dockerfile
- nginx.conf
- php.ini
- run.sh
- supervisor.conf 

### Build the laravel docker image for production


**Make sure to configure your .env file before building the image**

Run this command ```docker build -t <hub-user>/<repo-name>:<tag> .``` to build the image of your application.

Before running the command, you have to give these informations:

- hub-user: it is your Docker Hub account username
- repo-name: it is the name of your application. You can choose it.
- tag: it is the tag of your application. 

### Run to test the image locally

Run this command ```docker run -d -p 8000:80 <hub-user>/<repo-name>:<tag>``` to create and run a container of the built image on your machine.

### Push your image on docker hub

Run this command ```docker push <hub-user>/<repo-name>:<tag>``` to push your image into Docker Hub.
