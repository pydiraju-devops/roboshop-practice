#!/bin/bash 

START_TIME=$(date +%s)

echo "script start time $START_TIME"

sleep 10

END_TIME=$(date +%S)

TOTAL_TIME=$(($END_TIME-$START_TIME))

echo "script total time is $TOTAL_TIME"
