#!/bin/bash
. $( dirname "${BASH_SOURCE[0]}")/setenv.sh
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
echo Mesos is setup
