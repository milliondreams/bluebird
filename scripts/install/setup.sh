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
  setup_filesystem
  cp -r $BLUEDIST/* $BLUEBIRD
  echo Files copied!
}


