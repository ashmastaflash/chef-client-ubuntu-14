FROM ubuntu:14.04
MAINTAINER Ash Wilson

RUN apt-get update && apt-get install -y git vim wget

WORKDIR = /tmp

RUN cd /tmp && wget https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/10.04/x86_64/chef_12.6.0-1_amd64.deb && dpkg -i /tmp/chef_12.6.0-1_amd64.deb

CMD /bin/bash
