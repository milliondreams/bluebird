#!/bin/bash

conf_local_hadoop(){
  if [ -z "$HADOOP_HOME" ];
  then
    export HADOOP_HOME=$BLUEBIRD/hadoop
  fi
  sed -i 's|.*export JAVA_HOME.*|export JAVA_HOME='"$JAVA_HOME"'|' $HADOOP_HOME/conf/hadoop-env.sh

  sh $BLUEBIRD/scripts/config/hadoop/core-site.xml.template > $HADOOP_HOME/conf/core-site.xml
  sh $BLUEBIRD/scripts/config/hadoop/hdfs-site.xml.template > $HADOOP_HOME/conf/hdfs-site.xml
  sh $BLUEBIRD/scripts/config/hadoop/mapred-site.xml.template > $HADOOP_HOME/conf/mapred-site.xml
}
