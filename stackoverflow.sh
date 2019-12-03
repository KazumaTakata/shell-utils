#!/bin/bash

function join { local IFS="$1"; shift; echo "$*"; }


echo "type in keyword"

read -p "keyword: " escaped 

echo $escaped
escaped=$(echo $escaped|sed -E  "s/\[/%5B/g")
escaped=$(echo $escaped|sed -E "s/\]/%5D/g")
escaped=$(echo $escaped| sed -E 's/ +/\+/g')
#escaped=$(echo $escaped | sed 's/:/ /g')


stackoverflow_url="https://stackoverflow.com/search?q=$escaped"


open $stackoverflow_url

#result=$(wget -qO- $stackoverflow_url)

#echo $result 

