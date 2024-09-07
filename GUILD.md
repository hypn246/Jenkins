# DOCKER ON CONTAINER

### CREATE ENV
`docker run --name jenkins-docker --rm --detach --privileged --network jenkins --network-alias docker --env DOCKER_TLS_CERTDIR=/certs --volume jenkins-docker-certs:/certs/client --volume jenkins-data:/var/jenkins_home --publish 2376:2376 docker:dind`

### BUILD IMAGE ON DOCKERFILE
`docker build -t jenkins:2.462.1-1 .`

### RUN JENKINS
`docker run --name jenkins --restart=on-failure --detach --network jenkins --env DOCKER_HOST=tcp://docker:2376 --env DOCKER_CERT_PATH=/certs/client --env DOCKER_TLS_VERIFY=1 --volume jenkins-data:/var/jenkins_home --volume jenkins-docker-certs:/certs/client:ro --publish 8080:8080 --publish 50000:50000 jenkins:2.462.1-1`

### GET PASSWORD
`docker container exec -it jenkins bash`
`sudo cat /var/lib/jenkins/secrets/initialAdminPassword`

# DOCKER ON LINUX

### Following all step on jenkins page

### Install docker

- If docker doesn't run and give error cannot connect to engine or host denial -> create the docker net work with `docker network create docker`

### Jenkins with docker

- If jenkis run docker command but dennied by engine -> add group in network:
    1. checkout group `groups jenkins`
    2. add docker into group: ` sudo usermod -aG docker jenkins`
    3. restart service 

- If jenkins and docker (either vm to win or same kernel) can ping each other ip with port `nc -vz [ip] [port]` but can't add cloud in pipeline -> ?