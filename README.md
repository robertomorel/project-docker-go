# Golang - DockerHub

## About
This is a simple project to exemplify the creation of a docker image to build and run a Golang script.

## Build
Follow the steps below to create an image on Docker Hub from the "Dockerfile" file:
```console
# Crie a imagem
docker commit <id_do_container> nome_da_nova_imagem:v1

# Crie uma tag
docker tag nome_da_nova_imagem:v1 YOUR_DOCKERHUB_NAME/nome_da_nova_imagem:v1

# Login no Dockerhub e informe login+senha 
docker login

# Upload
docker push YOUR_DOCKERHUB_NAME/nome_da_nova_imagem:v1
```

## Getting started
To download and run the image from Docker Hub, run the command:
```console
docker pull robertomorel/codeeducation
```

## Let´s Talk
[LinkedIn](https://www.linkedin.com/in/roberto-morel-6b9065193/)