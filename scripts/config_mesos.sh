#!/bin/bash
cd $BLUEBIRD
echo `hostname -f` > $MESOS_HOME/var/mesos/deploy/masters
echo `hostname -f` > $MESOS_HOME/var/mesos/deploy/slaves
echo master=`hostname -f`:5050 >> $MESOS_HOME/var/mesos/conf/mesos.conf

