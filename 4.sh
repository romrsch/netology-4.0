#!/bin/bash

IP="192.168.0.1 173.194.222.113 87.250.250.242 10.0.0.1"

mdate="$(date -u)"

x=0
while [ $x -lt 5 ]
do

for i in $IP; do nc -z $i 80 >/dev/null;
       
	res=$?
	if [ $res -eq 0 ]
	then
		echo "$mdate - server $i - result $res" >> /tmp/ip_check.log
	else	
	        echo "$mdate - server $i ERROR status=$res" >>/tmp/ip_check.log
		break 2
	fi
    done

    x=$(($x+1))

done




