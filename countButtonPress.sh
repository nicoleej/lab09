#!/bin/bash
count=0
while test $count -lt 16
do
	pin=$(gpio read 5)
	if test $pin -eq 0
	then
		let "count=$count+1"
		./setbits.sh $count
		let "pin=$(gpio read 5)"
	fi

	if test $count -eq 16
	then
		gpio mode 4 out
		gpio write 4 1
		sleep 1
		gpio write 4 0
		let "count=17"
	fi
sleep 0.1
done
