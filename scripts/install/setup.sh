#!/bin/bash

copy_all(){
  if [ -z "$BLUEDIST" ];
  then
    export  BLUEDIST="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
  fi

  if [ -z "$BLUEBIRD" ];
  then
    export  BLUEBIRD=$1
  fi

  if [ -z "$BLUEBIRD" ];
  then
    export  BLUEBIRD=~/bluebird
  fi

  if [ ! -d "$BLUEBIRD" ]
  then
    mkdir $BLUEBIRD
  fi

  cp $BLUEDIST/* $BLUEBIRD
}
