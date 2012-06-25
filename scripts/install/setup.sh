#!/bin/bash

setup_filesystem(){
  if [ -z $BLUEBIRD ];
  then
    if [ -z $1 ];
    then
      export  BLUEBIRD=~/bluebird
    else
      export  BLUEBIRD=$1
    fi
  fi

  if [ -z $BLUEBIRD_DATA ];
  then
    export BLUEBIRD_DATA=$BLUEBIRD/storage
  fi
  
  if [ ! -d $BLUEBIRD ]
  then
    mkdir $BLUEBIRD
  fi

  if [ ! -d $BLUEBIRD ]
  then
    mkdir $BLUEBIRD_DATA
  fi
}

copy_all(){
  echo Copy target is $1
  echo I also got $2
  setup_filesystem $1
  for folder in $BLUEDIST/*;
  do
    localname=`basename $folder`
    echo Checking $localname . . .
    if [ ! -e $BLUEBIRD/$localname ];
    then
      echo Copying to $BLUEBIRD/$localname . . .
      cp -r $folder $BLUEBIRD
    fi
  done;
  
  echo Files copied!
}


