#!/bin/bash

input= $( ip addr show eth0 | grep 192.168 | awk '{ print $2 }' )
IFS='.' read -ra ADDR <<< "$input"
for i in "${ADDR[@]}"; do
	echo $i;
done
