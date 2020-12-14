#!/bin/bash
/etc/init.d/ssh start
cat /tmp/hostExtras >> /etc/hosts
/etc/init.d/mysql start
for (( ; ; ))
do
    
    echo
    echo "-----------------"
    echo "DB Server Started"
    echo "-----------------"
    echo
    echo -n "IP: "
    ifconfig eth0|grep inet[^6]|cut -d " " -f 10
    cat /etc/hosts
    sleep 7
    clear
done
