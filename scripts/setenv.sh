#!/bin/bash
if [ -z "$BLUEBIRD" ];
then
	export  BLUEBIRD="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"
fi
echo BLUEBIRD directory is set to $BLUEBIRD

echo Setting Mesos Home directory
export MESOS_HOME=$BLUEBIRD/dist/mesos

echo Setting Hadoop Home directory
export HADOOP_HOME=$BLUEBIRD/dist/hadoop



. $( dirname "${BASH_SOURCE[0]}")/make_dirs.sh