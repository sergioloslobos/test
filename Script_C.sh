#! /bin/bash

name=$(hostname)
cpu_cores=$(lscpu | grep ^'CPU(s)')
total_mem=$(free -m | grep Mem | awk '{print $2}')
total_disk_size=$(df -h . | awk '{print $2}')

echo "
Hostname: $name
$cpu_cores
Memory: $total_mem MB
$total_disk_size" | tee -a System_Parameters