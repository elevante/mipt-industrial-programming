#!/bin/bash

for file in $(ls data | grep .log)
do
  echo "$file: $(grep "\"path\":\"$1\"" data/$file | jq .uid | sort -n | uniq -c | sort -n -k 1 | tail -n 1 | awk '{print $2}')"
done
