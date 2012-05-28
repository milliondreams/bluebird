#!/bin/bash
if [ -z "$BLUEBIRD" ];
then
	export  BLUEBIRD="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"
fi
echo BLUEBIRD directory is set to $BLUEBIRD

if [ ! -d "$BLUEBIRD/dist/"];
then
	mkdir "$BLUEBIRD/dist/"
fi

export MESOS_HOME=$BLUEBIRD/dist/mesos

if [ ! -d $MESOS_HOME];
then
	mkdir -p $MESOS_HOME
fi

mkdir $BLUEBIRD/vendor/mesos/build
cd $BLUEBIRD/vendor/mesos/
echo Bootstrapping Mesos dev environment . . .
./bootstrap
cd build
echo Configuring Mesos . . .
../configure --prefix=$MESOS_HOME
echo Building Mesos . . .
make
echo Installing Mesos . . .
make install
cd $BLUEBIRD

