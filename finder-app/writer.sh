#!/bin/bash

writefile=$1
writestr=$2

if [ $# -lt 2 ]
then
  echo "Too few arguments. Please enter: writer.sh 'writefile' 'writestr'"
  exit 1
else
  mkdir -p -- "$(dirname -- "$writefile")"
  echo $writestr > $writefile
fi


