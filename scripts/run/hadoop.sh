#!/bin/bash

run_hadoop(){
  if [ -z $HADOOP_HOME ];
  then
    export  HADOOP_HOME=$BLUEBIRD/hadoop
  fi

  echo Starting namenode . . .
  $HADOOP_HOME/bin/hadoop-daemon.sh --config $HADOOP_HOME/conf start namenode

  echo Starting datanode . . .
  $HADOOP_HOME/bin/hadoop-daemon.sh --config $HADOOP_HOME/conf start datanode
  
  echo Wait for namenode to be ready . . .
  $HADOOP_HOME/bin/hadoop dfsadmin -safemode wait

  echo Starting jobtracker . . .
  $HADOOP_HOME/bin/hadoop-daemon.sh --config $HADOOP_HOME/conf start jobtracker
  echo Everything\'s started
}
