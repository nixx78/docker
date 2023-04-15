docker stop HelloDocker

docker rm HelloDocker
                                
docker build -t nixx/hello-docker .

docker run --name HelloDocker -v c:/tmp/logs:/logs -d -h=webserver -p 8081:8080 nixx/hello-docker
