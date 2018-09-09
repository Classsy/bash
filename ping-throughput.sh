#!/bin/bash

readonly SCRIPT_NAME=${0##*/}
readonly SCRIPT_DIR=$(cd $(dirname $0) && pwd)

cd $SCRIPT_DIR

IPADDR=$1
SIZE=$2
COUNT=2


cat << _EOF_
SCRIPT_NAME     : $SCRIPT_NAME
SCRIPT_DIR      : $SCRIPT_DIR
Ping To         : $IPADDR
Ping Size       : $SIZE
Ping Count      : $COUNT
_EOF_

check_ping()
{
    ping -s $SIZE -c $COUNT $IPADDR >> /dev/null
    if [ $? != 0 ]; then
        echo "check ping NG 'ping -s $SIZE -c $COUNT $IPADDR'"
        exit 10
    fi
}


exec_ping(){
    ping -s $SIZE -c $COUNT $IPADDR > ping.$$
    AVG=$(sed -n "s/^.*time=\(.*\) ms/\1/p" ping.$$ | awk '{sum+=$1} END{print sum/NR}')
    echo ""
    echo "Result Report----------"
    echo -n "avg:$AVG  "
    echo "$AVG $SIZE" | awk '{ printf("%-4.2f[Mbytes/s]\n", ($2*2) / ($1/1000) / (1000*1000)) }'
}

check_ping

exec_ping

#if [ -e ./ping.$$ ]; then
#    rm -f ./ping.$$
#fi
