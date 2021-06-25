#!/bin/bash

IP="192.168.0.1 173.194.222.113 87.250.250.242"

mdate="$(date -u)"

x=0
while [ $x -lt 5 ]
do

for i in $IP; do nc -z $i 80 ; echo "$mdate - server $i - result $?" >>/tmp/ip_check.log; done

    x=$(($x+1))

done




