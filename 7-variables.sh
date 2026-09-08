#!/bin/bash 

START_TIME=$(date +%s)

echo "script start time $START_TIME"

END_TIME=$(date +%S)

TOTAL_TIME=$(($START_TIME-$END_TIME))

echo "script total time is $TOTAL_TIME"
