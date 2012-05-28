#!/bin/bash
echo creating dirs . . .

if [ ! -d "$BLUEBIRD/dist/" ];
then
	mkdir "$BLUEBIRD/dist/"
fi

if [ ! -d $MESOS_HOME ];
then
	mkdir -p $MESOS_HOME
fi

if [ ! -d $HADOOP_HOME ];
then
	mkdir -p $HADOOP_HOME
fi
