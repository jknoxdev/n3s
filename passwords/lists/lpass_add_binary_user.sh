#!/bin/bash

while read line; do
      echo "processing line $line"
#      printf "Username:binary\nPassword:binary" | lpass add --non-interactive \\$line/video-extenders
  done < lpass_client_add_items_all
lpass ls
lpass sync

echo "processing complete"
