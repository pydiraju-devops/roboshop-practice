#!/bin/bash

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
    echo "run this script with root user"
    exit 1
fi  

VALIDATE(){
        if [ $1 -ne 0 ]; then
           echo "$2 is failure"
           exit 1
        else 
           echo "$2 is success"
fi


}
 
  dnf install nginxee -y 
  VALIDATE $? "installing nginx"

  dnf install mysql -y 
  VALIDATE $? "installing mysql"
 

  dnf install nodejs  -y 
  VALIDATE $? "installing noejs"