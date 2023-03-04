#!/bin/bash

filesdir=$1
searchstr=$2

if [ $# -lt 2 ]
then
  echo "Too few arguments. Please enter: finder.sh 'filesdir' 'searchstr'"
  exit 1
elif [ ! -d $filesdir ]
then
  echo "Directory does not exist!"
  exit 1
else
  totalfiles=`ls $filesdir | grep -v / | wc -l`
  totallines=`grep -i -r $searchstr $filesdir/* | wc -l`
  echo "The number of files are $totalfiles and the number of matching lines are $totallines"
fi


