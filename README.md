# docker-training

`eval "$(docker-machine env default)"`

`docker build -t entrypoint-build .`

`docker run entrypoint-build "YAY it works"`

## Stop / remove all Docker containers / images

`docker stop $(docker ps -a -q)`

`docker rm $(docker ps -a -q)`

`docker rmi $(docker images -a)`

## Exec bash on a container

`docker exec -it {container ID} bash`

## Links

[https://hub.docker.com/_/postgres/](https://hub.docker.com/_/postgres/)
