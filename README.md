# docker-training

`eval "$(docker-machine env default)"`

`docker build -t entrypoint-build .`

`docker run entrypoint-build "YAY it works"`

## SSH into machine; bash into container

`docker exec -it {container id} bash`

`docker-machine ssh`

## Stop / remove all Docker containers / images

`docker stop $(docker ps -aq)`

`docker rm $(docker ps -aq)`

`docker rmi $(docker images -aq)`

_-aq_ stands for "all" and "quiet mode" (just contaner IDs)

## Inspect a container

`docker inspect {container ID}`

## Remove dangling volumes

List all volumes `docker volume ls`

List dangling volumes `docker volume ls -f dangling=true`

Remove dangling volumes `docker volume rm $(docker volume ls -qf dangling=true)`

## Map tomcat_logs volume to tomcat logs

`docker volume create --name tomcat_logs`

`docker run -it -v tomcat_logs:/usr/local/tomcat/logs/ -P -d tomcat`

## Links

[https://hub.docker.com/_/postgres/](https://hub.docker.com/_/postgres/)
