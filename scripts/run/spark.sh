#!/bin/bash

run_spark(){
  if [ -z $HADOOP_HOME ];
  then
    export  HADOOP_HOME=$BLUEBIRD/hadoop
  fi

  if [ -z $SCALA_HOME ];
  then
    export  SCALA_HOME=$BLUEBIRD/scala
    export PATH=$PATH:$SCALA_HOME/bin/
  fi

  if [ -z $SPARK_HOME ];
  then
    export  SPARK_HOME=$BLUEBIRD/spark
  fi

  export MASTER=`hostname`:5050
  $SPARK_HOME/spark-shell $@
}
