#!/bin/bash

if [[ ! $1 || ! $1 =~ ^[-+]?[0-9]+$ ]];
then
	echo "You have No first argument or wrong number on first argument"
	exit 1
elif [[ ! $2 || ! $2 =~ ^[-+]?[0-9]+$ ]];
then
	echo "You have No second argument or wrong number on second argument"
	exit 1
fi

for i in $(seq 1 $1)
do
	for j in $(seq 1 $2)
	do
		mul=`expr $i \* $j`
		echo -n "$i*$j=$mul "
	done
	echo ""
done

exit 0



