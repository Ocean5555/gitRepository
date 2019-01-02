#!/bin/bash

FILE=/root/test.txt

if [ ! -f $FILE ]; then
	echo "OK" >>$FILE
else
	echo -e "\033[32m--------------------------\033[1m"
	cat $FILE
fi
