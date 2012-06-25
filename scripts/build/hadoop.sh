#!/bin/bash

build_hadoop(){
  cd $BLUEBUILD/vendor/mesos/build/hadoop
  make hadoop-0.20.205.0
  cd $BLUEBUILD
}

dist_hadoop(){
  cp -r $BLUEBUILD/vendor/mesos/build/hadoop/hadoop-0.20.205.0 $BLUEBUILD/dist/hadoop
}


