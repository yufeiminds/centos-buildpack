#!/bin/env bash

tips "Init zsh by oh-my-zsh."
yum install zsh
curl -L http://install.ohmyz.sh | sh

tips "Install Docker."
yum -y install docker

tips "Install Development Tools."
yum -y groupinstall "Development Tools"

tips "Install Development Library."
yum -y install gcc gcc-c++ autoconf libjpeg libjpeg-devel libpng libpng-devel freetype freetype-devel libxml2 libxml2-devel zlib zlib-devel glibc glibc-devel glib2 glib2-devel bzip2 bzip2-devel ncurses ncurses-devel curl curl-devel e2fsprogs e2fsprogs-devel krb5 krb5-devel libidn libidn-devel openssl openssl-devel openldap openldap-devel nss_ldap openldap-clients openldap-servers

tips "Add EPEL(Extra Packages for Enterprise Linux) repo."
yum install epel-release
