#!/bin/bash
. $( dirname "${BASH_SOURCE[0]}")/setenv.sh
patch vendor/mesos/hadoop/hadoop-0.20.205.0.patch patches/hadoop_java7.patch
cd $BLUEBIRD/vendor/mesos/build/hadoop
make hadoop-0.20.205.0
cd $BLUEBIRD
