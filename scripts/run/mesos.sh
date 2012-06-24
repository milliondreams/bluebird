#!/bin/bash

run_mesos(){
  export MESOS_HOME=$BLUEBIRD/mesos

  sudo $MESOS_HOME/sbin/mesos-start-cluster.sh &
}
