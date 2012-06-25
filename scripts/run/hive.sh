#!/bin/bash

run_hive(){
  if [ -z $HADOOP_HOME ];
  then
    export  HADOOP_HOME=$BLUEBIRD/hadoop
  fi

  if [ -z $HIVE_HOME ];
  then
    export  HIVE_HOME=$BLUEBIRD/hive
  fi

  export PATH=$PATH:$HIVE_HOME/bin/
  hive
}
