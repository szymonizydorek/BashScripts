#!/bin/bash

if [ $# -lt 2 ]
then
	echo "This script requires more than 2 arguments."
	exit 1
fi 

echo $1 | grep "^[A-Z]*$" > /dev/null
if [ $? -ne 0 ]
then 
	echo "No cake for you!"
	exit 2
fi

echo $2 | grep "^[0-9]*$" > /dev/null
if [ $? -ne 0 ]
then 
	echo "No cake for you!"
	exit 2
fi

echo -e "You provided two arguments.\n\
       	First, starts with cap letter [A-Z] \n\
        second, starts with number"
