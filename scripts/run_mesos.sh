#!/bin/bash
$MESOS_HOME/sbin/mesos-start-cluster.sh
echo You should now be able to see the mesos web-ui at http://`hostname -f`:8080/

