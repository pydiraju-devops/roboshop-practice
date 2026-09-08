#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 20 ]; then
   echo "given number is: $NUMBER more than 20"
elif [ $NUMBER -eq 20 ]; then 
    echo "given number is: $NUMBER equal to 20"
else [ $NUMBER -lt 20 ]
    echo "given number is:$NUMBER less than 20"
fi    