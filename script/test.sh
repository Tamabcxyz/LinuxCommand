#!/bin/bash
function myf() {
    echo -e "test\n"
    sleep 2
}

COUNTER=1
while [ $COUNTER -le 20 ]; do
    myf
    ((COUNTER++))
done
