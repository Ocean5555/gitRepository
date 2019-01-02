#!/bin/bash

yum -y install make zlib zlib-devel gcc-c++ libtool  openssl openssl-devel
wget http://downloads.sourceforge.net/project/pcre/pcre/8.35/pcre-8.35.tar.gz
tar zxvf pcre-8.35.tar.gz
cd pcre-8.35
./configure
make && make install
if [[ "$?" == "0" ]];then
	echo -e "\033[32mPCRE has been installed success!\033[0m"
else
	echo -e "\033[33mPCRE installed failed,please check\033[0m"
fi

cd ..
echo -e "\033[32mbegin install Nginx\033[0m"
wget http://nginx.org/download/nginx-1.6.2.tar.gz
tar zxvf nginx-1.6.2.tar.gz
cd nginx-1.6.2
./configure --prefix=/usr/local/webserver/nginx --with-http_stub_status_module --with-http_ssl_module --with-pcre=/usr/local/src/pcre-8.35
make && make install

echo -n -e "\033[34minput a new group name for Nginx:\033[0m"
read groupName
echo -n -e "\033[34minput a new user name for Nginx:\033[0m"
read userName
groupadd $groupName
useradd $userName -g $groupName

