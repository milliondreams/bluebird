#!/bin/bash

run_hadoop(){
  if [ -z $HADOOP_HOME ];
  then
    export  HADOOP_HOME=$BLUEBIRD/hadoop
  fi

  echo Starting namenode . . .
  $HADOOP_HOME/bin/hadoop-daemon.sh --config $HADOOP_HOME/conf start namenode
  echo Waiting for 5s for namenode to be ready . . .
  sleep 5s

  echo Starting datanode . . .
  $HADOOP_HOME/bin/hadoop-daemon.sh --config $HADOOP_HOME/conf start datanode
  echo Waiting 5s for datanode to start . . .
  sleep 5s

  echo Starting jobtracker . . .
  $HADOOP_HOME/bin/hadoop-daemon.sh --config $HADOOP_HOME/conf start jobtracker
  echo Everything\'s started
}
