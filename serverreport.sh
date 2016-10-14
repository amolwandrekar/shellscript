#!/bin/bash
#Purpose: Generateserver report
#Date: 10 OCT 2016
#AUTHOR: 

line="================================================================"
echo "System Report for $(hostname)" 
echo $line
total_cpu_core=$(grep -c processor /proc/cpuinfo)
echo Total cpu cores = $total_cpu_core
echo $line
total_memory=$(free -m | awk '/Mem/{print $2, "MB"}')
echo $total_memory
echo $line
echo "Diskspace"
df -hTP --total | column -t
echo $line
echo "Load Average"
uptime
