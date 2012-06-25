#!/bin/bash

install_hive(){

  if [ -z $HADOOP_HOME ];
  then
    export  HADOOP_HOME=$BLUEBIRD/hadoop
  fi
  
  echo We need to create some directories in HDFS
  echo Starting HDFS . . .

  echo Starting namenode . . .
  $HADOOP_HOME/bin/hadoop-daemon.sh --config $HADOOP_HOME/conf start namenode
  echo Starting datanode . . .
  $HADOOP_HOME/bin/hadoop-daemon.sh --config $HADOOP_HOME/conf start datanode
  
  echo Wait for namenode to be ready
  $HADOOP_HOME/bin/hadoop dfsadmin -safemode wait

  

  echo Creating HIVE directories . . .
  $HADOOP_HOME/bin/hadoop fs -mkdir       /tmp
  $HADOOP_HOME/bin/hadoop fs -mkdir       /user/hive/warehouse
  $HADOOP_HOME/bin/hadoop fs -chmod g+w   /tmp
  $HADOOP_HOME/bin/hadoop fs -chmod g+w   /user/hive/warehouse

  echo Shutting down HDFS
  $HADOOP_HOME/bin/hadoop-daemon.sh --config $HADOOP_HOME/conf stop datanode
  $HADOOP_HOME/bin/hadoop-daemon.sh --config $HADOOP_HOME/conf stop namenode

}
