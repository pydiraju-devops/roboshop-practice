#!/bin/bash

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
    echo "run this script with root user"
    exit 1
fi  

  echo "installing nginx"
  dnf installlll nginx -y 

if [ $? -ne 0 ]; then
   echo "installing nginx is failure"
   exit 1
else 
    echo "installing nginx is success"
fi    