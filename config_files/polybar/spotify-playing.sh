#!/bin/bash
function jsonval {
    temp=`echo $json | sed 's/\\\\\//\//g' | sed 's/[{}]//g' | awk -v k="text" '{n=split($0,a,","); for (i=1; i<=n; i++) print a[i]}' | sed 's/\"\:\"/\|/g' | sed 's/[\,]/ /g' | sed 's/\"//g' | grep -w $prop`
    echo ${temp##*|}
}

json=`playerctl metadata`
prop='xesam:title'
value=`jsonval`
title=`echo $value | cut -d "'" -f 4`

prop='xesam:artist'
value=`jsonval`
artist=`echo $value | cut -d "'" -f 4`

echo "$artist | $title"