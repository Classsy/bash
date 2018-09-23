#!/bin/bash

arr1=(`cat ./file.txt`)

menu()
{
    local i=1
    for v in "${arr1[@]}"
    do
        echo "$i)$v"
        i=$((++i))
    done
}

menu

echo -n "INPUT: "
read key

key=$key-1
#配列から要素とって、必要な処理を実施すること
echo "${arr1[key]}"
