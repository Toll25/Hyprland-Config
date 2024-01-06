#!/usr/bin/env bash
ADD=""

if [[ $1 == "percent" ]]; then
  ADD=" %"
fi

grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage}' | awk '{printf "%d%s\n", $1, "'"$ADD"'"}'
