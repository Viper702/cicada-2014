#!/bin/sh
# Usage: ./hash_finder.sh hash
[ -z "$1" ] && exit 1
cat onions-list.txt | xargs -L1 -I% sh -c "printf % | sha1sum" | grep $1
cat onions-list.txt | xargs -L1 -I% sh -c "printf % | md5sum" | grep $1
