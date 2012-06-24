#!/bin/bash

build_hadoop(){
  cd $BLUEBUILD/vendor/mesos/build/hadoop
  make hadoop-0.20.205.0
  cd $BLUEBUILD
  cp -r $BLUEBUILD/vendor/mesos/build/hadoop/hadoop-0.20.205.0 $BLUEBUILD/dist/hadoop
}

dist_hadoop(){
  cp -r $BLUEBUILD/vendor/mesos/build/hadoop/hadoop-0.20.205.0 $BLUEBUILD/dist/hadoop
  cp -r $BLUEBUILD/scripts/config/hadoop.sh $BLUEBUILD/dist/scripts/config/
  cp -r $BLUEBUILD/scripts/install/hadoop.sh $BLUEBUILD/dist/scripts/install/
  cp -r $BLUEBUILD/scripts/run/hadoop.sh $BLUEBUILD/dist/scripts/run/
  cp -r $BLUEBUILD/scripts/stop/hadoop.sh $BLUEBUILD/dist/scripts/stop/
}


