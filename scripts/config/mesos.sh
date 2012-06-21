#!/bin/bash

conf_local_mesos(){
  if [ -z "$MESOS_HOME" ];
  then
    export MESOS_HOME = $BLUEBIRD/mesos
  fi

  echo `hostname -f` > $MESOS_HOME/var/mesos/deploy/masters
  echo `hostname -f` > $MESOS_HOME/var/mesos/deploy/slaves
  echo master=`hostname -f`:5050 >> $MESOS_HOME/var/mesos/conf/mesos.conf
}

