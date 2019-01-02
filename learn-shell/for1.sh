#!/bin/bash

for (( index=0; index<=$#; index++ ))
do
	echo ${!index}
done
