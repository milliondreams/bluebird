#!/bin/bash

run_sparkeg(){
  if [ $# -lt 1 ];
  then
    echo "Syntax"
    echo "./run.sh sparkeg <example-class>"
    exit
  else
    echo Running example $@
  fi

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

  $SPARK_HOME/run $1 `hostname`:5050
}
