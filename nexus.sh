#!/bin/bash
while [ 1 ];
do
    count=`curl -s "https://play.google.com/store/devices/details?id=nexus_6_white_32gb" | grep -c "Coming soon"`
    if [ "$count" != "1" ]
    then
       mail -s "NEXUS6" thomas@quiroga.fr < /dev/null
       exit 0
    fi
    sleep 600   
done