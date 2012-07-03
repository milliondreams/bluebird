#!/bin/bash

#export HIVE_ARCHIVE=hive-0.9.0-bin.tar.gz
export HIVE_VERSION=0.7.0

build_hive(){
  if [ ! -d $BLUEBUILD/build/downloads ];
  then
    mkdir -p $BLUEBUILD/build/downloads
  fi

  if [ ! -e $BLUEBUILD/build/downloads/hive-$HIVE_VERSION-bin.tar.gz ];
  then
    wget http://archive.apache.org/dist/hive/hive-$HIVE_VERSION/hive-$HIVE_VERSION-bin.tar.gz -O $BLUEBUILD/build/downloads/hive-$HIVE_VERSION-bin.tar.gz
  fi

  tar -zxvf $BLUEBUILD/build/downloads/hive-$HIVE_VERSION-bin.tar.gz -C $BLUEBUILD/build/
  
}

dist_hive(){
  mv $BLUEBUILD/build/hive-$HIVE_VERSION-bin $BLUEBUILD/dist/hive
}
