#!/usr/bin/env bash

if [[ $1 == "usage" ]]; then
    df -H /home | tail -n 1 | awk '{print $2 "B/" $3"B"}'
fi

if [[ $1 == "percent" ]]; then
  df --output=pcent / | tail -n 1 | sed 's/%//g' | awk '{print $1}'
fi
