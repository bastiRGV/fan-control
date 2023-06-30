#!/bin/bash

current=$(</sys/devices/platform/asus-nb-wmi/throttle_thermal_policy)
# 0=Balanced 1=Performance 2=Quiet

case $current in 
    0)
        echo "1" > /sys/devices/platform/asus-nb-wmi/throttle_thermal_policy
        kdialog --passivepopup 'New Fan Mode: Performance' 4
        ;;
    1)
        echo "2" > /sys/devices/platform/asus-nb-wmi/throttle_thermal_policy
        kdialog --passivepopup 'New Fan Mode: Quiet' 4
        ;;
    2)
        echo "0" > /sys/devices/platform/asus-nb-wmi/throttle_thermal_policy
        kdialog --passivepopup 'New Fan Mode: Balanced' 4
        ;;
esac