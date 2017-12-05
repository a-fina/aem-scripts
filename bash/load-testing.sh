#!/bin/bash

if [ $# -eq 0 ]; then
    echo >&2 "Usage: load-testing.sh server:port n_request n_concurrent"
    exit 1
fi


AEMHOST=$1
NREQ=$2
NCON=$3

CONTENT=
PATH=


ab -k -n$NREQ -c$NCON http://$AEMHOST/$CONTENT/$PATH &  
