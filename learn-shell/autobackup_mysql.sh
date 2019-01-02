#!/bin/bash

BAK_DIR=/root/backup/`date +%Y%m%d`
MYSQLDB=mysql
MYSQLUSR=ocean
MYSQLPW=huhaiyang
MYSQLCMD=/usr/bin/mysqldump

if [ $UID -ne 0 ];then
	echo "must to be use root for exec shell."
	exit
fi

if [ ! -d $BAK_DIR ]; then
	mkdir -p $BAK_DIR
	echo "the $BAK_DIR create suceessfully!"
else
	echo "this $BAK_DIR is exists"
fi

#Mysql backup command
$MYSQLCMD -u$MYSQLUSR -pMYSQLPW -d $MYSQLDB > $BAK_DIR/$MYSQLDB.sql

if [ $? -eq 0 ];then
	echo "the mysql backup $MYSQLDB successfully!"
else
	echo "the mysql backup $MYSQLDB failed,please check."
fi
