#!/bin/bash

config_spark(){
  if [ -z "$SPARK_HOME" ];
  then
    export SPARK_HOME=$BLUEBIRD/spark
  fi

  sh $BLUEBIRD/scripts/config/spark/spark-env.sh.template > $SPARK_HOME/conf/spark-env.sh
}
