#!/bin/bash

USERI_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
    echo "run this script with root user"
    exit 1
fi    