#!/bin/bash

setenv(){
  export BLUEBUILD=`pwd`
  echo Set Bluebird build root to - $BLUEBUILD
}

makedirs(){
  mkdir $BLUEBUILD/dist
  mkdir $BLUEBUILD/dist/scripts
  mkdir $BLUEBUILD/dist/scripts/config
  mkdir $BLUEBUILD/dist/scripts/install
  mkdir $BLUEBUILD/dist/scripts/run
  mkdir $BLUEBUILD/dist/scripts/stop
}

