#!/bin/bash

source define.sh

# MongoDB
cp repo/10gen.repo /etc/yum.repos.d/10gen.repo

yum install mongo-10gen-server -y
yum install mongo-10gen -y

service mongod start

tips "MongoDB installed Successful"

yum install redis

tips "Redis installed Successful"
