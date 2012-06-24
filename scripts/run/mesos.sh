#!/bin/bash

run_mesos(){
  if [ -z $MESOS_HOME ];
  then
    export MESOS_HOME=$BLUEBIRD/mesos
  fi

  sudo $MESOS_HOME/sbin/mesos-start-cluster.sh &
}
