#!/usr/bin/env bash

pid=$1

while ps $pid >/dev/null
do
    ps -o vsz= ${pid}
    sleep 1
done | sort -n | tail -n1
