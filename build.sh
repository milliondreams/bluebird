#!/bin/bash
. ./scripts/build/setenv.sh

setenv 

makedirs

build_all(){
  . ./scripts/build/all.sh
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
  . ./scripts/build/$1.sh
  build_$1
else
  echo what to build?
fi


