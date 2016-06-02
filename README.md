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

`docker inspect --format {{.NetworkSettings.IPAdress}}` {containerID}

## Volumes

List all volumes `docker volume ls`

List dangling volumes `docker volume ls -f dangling=true`

Remove dangling volumes `docker volume rm $(docker volume ls -qf dangling=true)`

### What container is using which volume?

`docker inspect --format "{{.Id}} {{range .Mounts}} {{.Name}} {{end}}" $(docker ps -aq)`

`docker inspect --format {{.NetworkSettings.IPAddress}} {container ID}`

### Map tomcat_logs volume to tomcat logs

`docker volume create --name tomcat_logs`

`docker run -it -v tomcat_logs:/usr/local/tomcat/logs/ -P -d tomcat`

OR

`docker run -d -v ~/GitHub/Experiments/docker-training/tomcat_logs/:/usr/local/tomcat/logs/ tomcat`

## More

`docker run -it --link engineX:web busybox sh`

## Links

[https://hub.docker.com/_/postgres/](https://hub.docker.com/_/postgres/)
