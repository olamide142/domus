#!/bin/bash
/etc/init.d/ssh start
/etc/init.d/apache2 start
service mosquitto start
for (( ; ; ))
do
    
    echo
    echo "-------------------------"
    echo "Mosquitto Server Started"
    echo "-------------------------"
    echo
    echo -n "IP: "
    ifconfig eth0|grep inet[^6]|cut -d " " -f 10
    /root/monitor.py
    sleep 3
    clear
done
