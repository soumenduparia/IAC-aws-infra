#!/bin/bash 

yum install git -y
yum install java-11-amazon-corretto-javadoc.x86_64 -y
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum install jenkins -y
systemctl start jenkins
systemctl enable jenkins