 - Build Docker: 
_docker build -t nixx/hello-docker ._

 - Run Docker:
_docker run --name HelloDocker -d -p 8080:8080 nixx/hello-docker_

 - Stop Docker:
_docker stop HelloDocker_

 - Remove Docker
_docker rm HelloDocker_

 - Active list
_docker ps > t_