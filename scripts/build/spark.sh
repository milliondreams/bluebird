#!/bin/bash

build_spark(){
  SPARK_VERSION=v0.5.0
  cd $BLUEBUILD/vendor/spark
  git checkout $SPARK_VERSION
  ./sbt/sbt compile
  cd $BLUEBUILD
}

dist_spark(){
  cp -r $BLUEBUILD/vendor/spark $BLUEBUILD/dist/spark
  rm -Rf $BLUEBUILD/dist/spark/.git

  echo Publish spark in preparaation of a Shark build . . .
  cd $BLUEBUILD/vendor/spark
  ./sbt/sbt publish-local
  cd $BLUEBIRD
}
