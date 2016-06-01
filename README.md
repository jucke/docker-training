# docker-training

`eval "$(docker-machine env default)"`

`docker build -t entrypoint-build .`

`docker run entrypoint-build "YAY it works"`

## Stop / remove all Docker containers / images

`docker stop $(docker ps -aq)`

`docker rm $(docker ps -aq)`

`docker rmi $(docker images -aq)`

_-aq_ stands for "all" and "quiet mode" (just contaner IDs)

## Exec bash on a container

`docker exec -it {container ID} bash`

## Links

[https://hub.docker.com/_/postgres/](https://hub.docker.com/_/postgres/)
