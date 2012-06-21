#!/bin/bash

setenv(){
  export BLUEBUILD=`pwd`
  echo Set Bluebird build root to - $BLUEBUILD
}

makedirs(){
  mkdir $BLUEBUILD/dist
}

