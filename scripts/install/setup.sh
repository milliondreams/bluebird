#!/bin/bash

copy_all(){
  if [ -z $1 ];
  then
    export  BLUEBIRD=~/bluebird
  else
    export  BLUEBIRD=$1
  fi
  
  if [ ! -d $BLUEBIRD ]
  then
    mkdir $BLUEBIRD
  fi

  cp -r $BLUEDIST/* $BLUEBIRD
  echo Files copied!
}


