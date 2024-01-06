#!/usr/bin/env bash

if [[ $1 == "usage" ]]; then
    df -H / | tail -n 1 | awk '{print $2 "/" $3}'
fi
if [[ $1 == "percent" ]]; then
  df --output=pcent / | tail -n 1 | sed 's/%//g' | awk '{print $1}'
fi


