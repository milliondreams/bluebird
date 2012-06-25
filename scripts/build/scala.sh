#!/bin/bash

export SCALA_ARCHIVE=scala-2.9.1-1.tgz

build_scala(){
  if [ ! -d $BLUEBUILD/build/downloads ];
  then
    mkdir -p $BLUEBUILD/build/downloads
  fi

  if [ ! -e $BLUEBUILD/build/downloads/$SCALA_ARCHIVE ];
  then
    wget http://www.scala-lang.org/sites/default/files/linuxsoft_archives/downloads/distrib/files/$SCALA_ARCHIVE -O $BLUEBUILD/build/downloads/$SCALA_ARCHIVE
  fi

  tar -zxvf $BLUEBUILD/build/downloads/$SCALA_ARCHIVE -C $BLUEBUILD/build/
  
}

dist_scala(){
  mv $BLUEBUILD/build/scala-2.9.1-1 $BLUEBUILD/dist/scala
}
