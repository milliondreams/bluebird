#!/bin/bash

setbluebird(){
  if [ -z "$BLUEBIRD" ];
  then
    export  BLUEBIRD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
  fi
}

setenv(){
  $MESOS_HOME=$BLUEBIRD/mesos
  $HADOOP_HOME=$BLUEBIRD/hadoop
}
