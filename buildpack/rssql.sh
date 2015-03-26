#!/bin/bash 

source define.sh

tips "PostgreSQL"

yum install postgresql-server -y
service postgresql initdb
chkconfig postgresql on

tips "Mysql"
