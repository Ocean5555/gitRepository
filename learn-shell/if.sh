#!/bin/bash
if(($1>$2));then
	echo "if test $1>$2"
else 
	echo "if test $1<$2"
fi
