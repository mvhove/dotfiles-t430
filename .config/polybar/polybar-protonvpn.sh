#!/bin/bash

output=$(protonvpn-cli s)
connection_status=$(tail -n 1 <<< $output | awk '{print $1}')

if [ "$connection_status" = "No" ]
then
  echo "No VPN"
else
  server=$(sed '5q;d' <<< $output | awk '{print $2}')
  echo "$server"
fi
