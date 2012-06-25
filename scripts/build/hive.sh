#!/bin/bash

export HIVE_ARCHIVE=hive-0.9.0-bin.tar.gz

build_hive(){
  if [ ! -d $BLUEBUILD/build/downloads ];
  then
    mkdir -p $BLUEBUILD/build/downloads
  fi

  if [ ! -e $BLUEBUILD/build/downloads/$HIVE_ARCHIVE ];
  then
    wget http://apache.techartifact.com/mirror/hive/hive-0.9.0/$HIVE_ARCHIVE -O $BLUEBUILD/build/downloads/$HIVE_ARCHIVE
  fi

  tar -zxvf $BLUEBUILD/build/downloads/$HIVE_ARCHIVE -C $BLUEBUILD/build/
  
}

dist_hive(){
  mv $BLUEBUILD/build/hive-0.9.0-bin $BLUEBUILD/dist/hive
}
