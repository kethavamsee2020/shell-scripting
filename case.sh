#!/bin/bash

echo frontend instalation
echo catalogue instalation
echo Cart instalation

case $1 in
frontend)
  echo Installing frontend
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
esac
