#!/bin/bash
i=0
while test $i -eq 0
do
	check=1
	while test $check -eq 1
	do
		echo WAITING FOR PRESS
		let "check=$(gpio read 5)"
		sleep 0.1
	done

	while test $check -eq 0
	do
		echo WAITING FOR RELEASE
		let "check=$(gpio read 5)"
		sleep 0.1
	done
done
