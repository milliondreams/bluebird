#!/bin/bash

build_shark(){
  if [ -z "$SHARK_HOME" ];
  then
    export SHARK_HOME=$BLUEBUILD/vendor/shark
  fi

  sh $BLUEBIRD/scripts/build/shark/spark-env.sh.template > $SHARK_HOME/conf/shark-env.sh

  export HIVE_HOME=$BLUEBUILD/dist/hive
  
  cd $SHARK_HOME
  git checkout spark0.5
  git pull origin spark0.5
  
  sed -i 's/0.4-SNAPSHOT/0.5.0/g' $SHARK_HOME/project/SharkBuild.scala

  ./sbt/sbt products
}
