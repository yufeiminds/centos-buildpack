#!/bin/bash

source define.sh

# MongoDB
cp repo/10gen.repo /etc/yum.repos.d/10gen.repo

yum install mongo-10gen-server -y
yum install mongo-10gen -y

service mongod start

tips "MongoDB installed Successful"

rpm -ivh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6
yum install redis -y

tips "Redis installed Successful"
