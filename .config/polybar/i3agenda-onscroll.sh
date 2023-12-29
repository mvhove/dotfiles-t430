#!/usr/bin/env bash
if [ -n "${1}" ]; then
  file=~/.config/polybar/i3-agenda-skip.tmp
  typeset -i skip=$(cat $file || echo 0)
  if [[ "${1}" == "up" ]]; then
    skip+=1
  elif [[ "${1}" == "down" && $skip -gt 0 ]]; then
    skip=$(( skip - 1))
  fi
  echo $skip > $file
fi
