FROM ubuntu:latest

# Install Docker
RUN apt-get update; apt-get -y install apt-transport-https\
 				ca-certificates\
 				curl\
 				software-properties-common\
				python-pip
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -; add-apt-repository  "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
RUN apt-get update; apt-get -y install docker-ce

# Install AWS-CLI
RUN pip install awscli
