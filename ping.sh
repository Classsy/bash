#!/bin/bash

#bash3以降で可能{1..355}

for i in {1..2}
do
    for j in {1..5}
    do
        ping -c 3 192.168.$i.$j
        if [ $? = 0 ]; then
            echo 192.168.$i.$j >> ping_OK.log
        else
            echo 192.168.$i.$j >> ping_NG.log
        fi
    done
done
