#!/bin/bash

stop_mesos(){
  echo Shutting down mesos now . . .
  if [ -z $MESOS_HOME ];
  then
    export MESOS_HOME=$BLUEBIRD/mesos
  fi

  sudo $MESOS_HOME/sbin/mesos-stop-cluster.sh
}
