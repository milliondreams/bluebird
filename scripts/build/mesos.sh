#!/bin/bash

build_mesos(){
  : ${BLUEBUILD:?"Need to set BLUEBUILD directory or run setenv"}
  
  #Goto Mesos Directory
  cd $BLUEBUILD/vendor/mesos

  #checkout mesos 0.9.0
  git checkout -b release-0.9.0-incubating-RC5

  #Bootstrap mesos build
  ./bootstrap

  #Make the build directory and change to it
  mkdir build
  cd build

  #Configure and make
  ../configure --with-webui --with-included-zookeeper --prefix=$BLUEBUILD/dist/mesos
  make

  #Return to original directory
  cd $BLUEBUILD
}

dist_mesos(){
  cd $BLUEBUILD/vendor/mesos/build
  
  make install
  
  cd $BLUEBUILD

}

clean_mesos(){
  echo Removing changes from mesos . . .
  cd $BLUEBUILD/vendor/mesos
  git reset .
  git checkout -- .
  git clean -fd
  cd $BLUEBUILD
}



