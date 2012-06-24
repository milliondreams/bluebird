#!/bin/bash

stop_mesos(){
  echo Shutting down mesos now . . .
  export MESOS_HOME=$BLUEBIRD/mesos

  sudo $MESOS_HOME/sbin/mesos-stop-cluster.sh
}
