#! /usr/bin/env bash

sudo yum update -y

CONSUL_VERSION=1.0.2
wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip
sudo unzip consul_${CONSUL_VERSION}_linux_amd64.zip -d /usr/bin/