#!/bin/bash

build_hive(){
  if [ ! -d $BLUEBUILD/build/downloads ];
  then
    mkdir -p $BLUEBUILD/build/downloads
  fi

  HIVE_ARCHIVE=hive-0.9.0-bin.tar.gz

  if [ ! -e $BLUEBUILD/build/downloads/$HIVE_ARCHIVE ];
  then
    wget http://apache.techartifact.com/mirror/hive/hive-0.9.0/$HIVE_ARCHIVE -O $BLUEBUILD/build/downloads/$HIVE_ARCHIVE
  fi

  tar -zxvf $BLUEBUILD/build/downloads/$HIVE_ARCHIVE -C $BLUEBUILD/dist/
  
  mv $BLUEBUILD/dist/hive-0.9.0-bin $BLUEBUILD/dist/hive
  
}
