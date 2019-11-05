FROM registry.gitlab.com/zatosource/docker-registry/cloud:3.1

LABEL maintainer="Anielkis Herrera <aherrera@zato.io>, Dariusz Suchojad <dsuch@zato.io>"
LABEL Description="Zato's Docker image for cloud environments" Version="3.1.0"

RUN apt-get update && apt-get install iputils-ping telnet -y

RUN git config --global user.email "docker@zato.io" && git stash && git pull && ./update.sh
