#!/bin/bash

filr=y
echo "$filr"


if [[ $1 == "" ]]
then
	echo "Empty"
	read port
	echo "$port"
else
	port=$1
	echo "$port"
fi

echo "Enter $(read txt) "
if [ $1 
trap '{ echo "Hey, you pressed Ctrl-C.  Time to quit." ; exit 1; }' INT
echo "Counting to 5 slowly, press Ctrl-C to interrupt."
for number in 1 2 3 4 5; do
    echo $number
    sleep 1
done

trap '' INT
echo "Counting to 5 again, but pressing Ctrl-C shouldn't work."
for number in 1 2 3 4 5; do
    echo $number
    sleep 1
done

trap - INT
echo "One more time, but Ctrl-C should work again."
for number in 1 2 3 4 5; do
    echo $number
    sleep 1
done
exit 0
