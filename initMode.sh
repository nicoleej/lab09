#!/bin/bash

gpio mode 5 in
gpio mode 5 up
for pin in 0 1 2 3 4
do
	gpio mode $pin out
	gpio write $pin 0
done
