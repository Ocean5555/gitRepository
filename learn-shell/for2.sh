#!/bin/bash

var1=$*
var2=$@
echo "var1: $var1"
echo "var2: $var2"

countVar1=0
countVar2=0

for param in "$*"
do
	countVar1=$[ $countVar1 +1 ]
	echo "first loop param$countVar1: $param"
done
echo "countVar1: $countVar1"

for param in "$@"
do
	countVar2=$[ $countVar2 + 1 ]
	echo "second param$countVar2: $param"
done
echo "countVar2: $countVar2
