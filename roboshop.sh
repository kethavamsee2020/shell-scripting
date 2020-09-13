#!/bin/bash

case $1 in
 Frontend)
   echo Installing frontend
  yum install nginx -y
  # echo Completed installation of frontend
  ;;
 Catalogue)
   echo installing catalogue
   echo Completed installtion of Catalogue
  ;;
 Cart)
   echo installing Cart
   echo Completed installtion of Cart
  ;;
 *)
   echo "invalid inputs, flowing inputs are only accepted"
   echo "usage:$0 frontend|catalogue|cart"
esac