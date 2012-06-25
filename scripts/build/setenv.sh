#!/bin/bash

setenv(){
  export BLUEBUILD=`pwd`
  echo Set Bluebird build root to - $BLUEBUILD
}

makedirs(){
  if [ ! -d $BLUEBUILD/dist ];
  then  
    mkdir $BLUEBUILD/dist
  fi

  if [ ! -d $BLUEBUILD/dist/scripts ];
  then  
    mkdir $BLUEBUILD/dist/scripts
  fi

  if [ ! -d $BLUEBUILD/dist/scripts/config ];
  then  
  mkdir $BLUEBUILD/dist/scripts/config
  fi

  if [ ! -d $BLUEBUILD/dist/scripts/install ];
  then  
    mkdir $BLUEBUILD/dist/scripts/install
  fi

  if [ ! -d $BLUEBUILD/dist/scripts/run ];
  then  
    mkdir $BLUEBUILD/dist/scripts/run
  fi

  if [ ! -d $BLUEBUILD/dist/scripts/stop ];
  then  
    mkdir $BLUEBUILD/dist/scripts/stop
  fi

}

