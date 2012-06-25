#!/bin/bash

install_hadoop(){
  echo Installing hadoop . . .
  if [ -z "$HADOOP_HOME" ];
  then
    export HADOOP_HOME=$BLUEBIRD/hadoop
  fi

  mkdir -p $BLUEBIRD_DATA/name
  mkdir -p $BLUEBIRD_DATA/data
  chmod 755 $BLUEBIRD_DATA/data

  conf_local_hadoop  

  $HADOOP_HOME/bin/hadoop namenode -format
}
