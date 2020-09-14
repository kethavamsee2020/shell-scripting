#!/bin/bash

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

case $1 in
 frontend)
   echo -e "\e[31m************>>>>>>>>>>>>>>>>>>>>Installing frontend<<<<<<<<<<<<<<<<<<<<************\e[0m"
  yum install nginx -y
  # echo Completed installation of frontend
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