#!/bin/bash
DIR=/root/asdqwe
if [ ! -d $DIR ];then
	mkdir -p $DIR
	echo -e "\033[32m the direction $DIR create success!\033[0m"
else
	echo -e "\033[32m the $DIR is exist,please exit.\033[0m"
fi
