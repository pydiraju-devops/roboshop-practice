#!/bin/bash

USER_ID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"
if [ $USER_ID -ne 0 ]; then
    echo "run this script with root user" | tee -a $LOGS_FILE
    exit 1
fi  

mkdir -p $LOGS_FOLDER

VALIDATE(){
        if [ $1 -ne 0 ]; then
           echo "$2 is failure" | tee -a $LOGS_FILE
           exit 1
        else 
           echo "$2 is success" | tee -a $LOGS_FILE
fi

}
 
for package in $@ ###parameter should pass here 
do 
  dnf list installed $package &>>LOGS_FILE
  if [ $? -ne 0 ]; then
     echo "$package not installed , installing now "
     dnf install $package -y &>>LOGS_FILE
     VALIDATE $? "$package installtion"
    else
       echo "$package already installed , skipping"
    fi 
done