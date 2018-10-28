FROM ubuntu:latest

# Install Docker
RUN apt-get update; sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -; sudo add-apt-repository  "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
RUN apt-get update; apt-get install docker-ce

# Install AWS-CLI
RUN apt-get install python-pip
RUN pip install awscli
