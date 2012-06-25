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
}

