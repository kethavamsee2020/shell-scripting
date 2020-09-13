#!/bin/bash

echo frontend instalation
echo catalogue instalation
echo Cart instalation

case $1 in
Frontend)
  echo Installing frontend
  echo Completed instalation of frontend
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
  echo "invalid inputs, flowing inputs are"
  echo "usage:$0 frontend|catalogue|cart"
esac
