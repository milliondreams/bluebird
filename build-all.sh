#!/bin/bash
. ./scripts/build/setenv.sh
. ./scripts/build/mesos.sh
. ./scripts/build/hadoop.sh

setenv 

makedirs

build_all(){
  build_mesos
  build_hadoop
}

build_clean(){
  cd $BLUEBUILD
  rm -Rf ./dist
  clean_mesos
}

if [ $# -gt 0 ];
then
  build_$1
else
  echo what to build?
fi


