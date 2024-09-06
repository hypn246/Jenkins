# CREATE ENV
`docker run --name jenkins-docker --rm --detach --privileged --network jenkins --network-alias docker --env DOCKER_TLS_CERTDIR=/certs --volume jenkins-docker-certs:/certs/client --volume jenkins-data:/var/jenkins_home --publish 2376:2376 docker:dind`

# BUILD IMAGE ON DOCKERFILE
`docker build -t jenkins:2.462.1-1 .`

# RUN JENKINS
`docker run --name jenkins --restart=on-failure --detach --network jenkins --env DOCKER_HOST=tcp://docker:2376 --env DOCKER_CERT_PATH=/certs/client --env DOCKER_TLS_VERIFY=1 --volume jenkins-data:/var/jenkins_home --volume jenkins-docker-certs:/certs/client:ro --publish 8080:8080 --publish 50000:50000 jenkins:2.462.1-1`

# GET PASSWORD
`docker container exec -it jenkins bash`
`sudo cat /var/lib/jenkins/secrets/initialAdminPassword`