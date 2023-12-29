#!/bin/sh

# should remove any leftover vpn parts
# that otherwise would disrupt connection
protonvpn-cli d &
wait $!
echo 'disconnected!'

# delete vpn ipv6 leak protection device
# if it is still here since prev command
# sometimes doesn't
nmcli d delete ipv6leakintrf0 &
wait $!
echo 'deleted faulty device!'


# wait for connection, times out and
# exits after 90 seconds
timeout=90
until wget -q --spider https://www.socialistmajority.com/
do
  if [ $timeout -eq 0 ]; then
    echo 'timed out!'
    exit 1
  else
    ((timeout--))
    echo 'countdown:'
    echo $timeout
    sleep 1
  fi
done

# finally connect to vpn
protonvpn-cli c -f &
wait $!
echo 'connected!'

# oh, and call reflector
sleep 2
reflector --protocol https --country US,Canada --latest 50 --sort rate --save /etc/pacman.d/mirrorlist
echo 'reflector called!'
