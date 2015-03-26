#!/bin/bash 

# The script is based on 
# http://www.centoscn.com/image-text/install/2014/0812/3480.html

source define.sh

tips "Pre-Install Module."
yum -y install gcc-c++ pcre pcre-devel zlib zlib-devel openssl openssl--devel

if find -name nginx; then
    tips "Clean old version."
    yum remove nginx
fi

tips "Install Nginx."
wget http://nginx.org/download/nginx-1.7.4.tar.gz
tar -zxvf nginx-1.7.4.tar.gz 
cd nginx-1.7.4
./configure
make 
make install
whereis nginx

tips "Clean."
rm -rf nginx-1.7.4*

tips "Successful."
