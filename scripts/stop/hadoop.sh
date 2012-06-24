#!/bin/bash

stop_hadoop(){
  echo Shutting down hadoop now . . .
  if [ -z $HADOOP_HOME ];
  then
    export  HADOOP_HOME=$BLUEBIRD/hadoop
  fi

  $HADOOP_HOME/bin/hadoop-daemon.sh --config $HADOOP_HOME/conf stop jobtracker
  $HADOOP_HOME/bin/hadoop-daemon.sh --config $HADOOP_HOME/conf stop datanode
  $HADOOP_HOME/bin/hadoop-daemon.sh --config $HADOOP_HOME/conf stop namenode
}

