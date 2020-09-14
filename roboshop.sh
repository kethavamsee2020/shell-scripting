#!/bin/bash

Set -e
USER_ID=$(id -u)
case $USER_ID in
  0)
    echo " Starting installation"
    ;;
  *)
    echo -e "\e[1;31mYou should be a root user to perform this script\e[0m"
    exit 1
    ;;
esac
## Functions
Status_Check (){
  case $? in
   0)
     echo -e "\e[1;32mSUCSESS\e[0m"
     ;;
   *)
     echo FAILURE
     ;;
  esac
}
case $1 in
 frontend)
   echo -e "\e[1;31m************>>>>>>>>>>>>>>>>>>>>Installing frontend<<<<<<<<<<<<<<<<<<<<************\e[0m"
   yum install nginx -y
   echo -e "\e[1;32m************>>>>>>>>>>>>>>>>>>>>Installing Nginx<<<<<<<<<<<<<<<<<<<<************\e[0m"
   Status_Check
   echo -e "\e[1;33m************>>>>>>>>>>>>>>>>>>>>STARTING Nginx<<<<<<<<<<<<<<<<<<<<************\e[0m"
   systemctl enable nginx
   systemctl start nginx
   Status_Check
   ;;
 catalogue)
   echo installing catalogue
   echo Completed installtion of Catalogue
   ;;
 cart)
   echo installing Cart
   echo Completed installtion of Cart
   ;;
 *)
   echo "invalid inputs, flowing inputs are only accepted"
   echo "usage:$0 frontend|catalogue|cart"
   exit 2
   ;;
esac