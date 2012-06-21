#!/bin/bash

build_mesos(){
  : ${BLUEBUILD:?"Need to set BLUEBUILD directory or run setenv"}
  
  #Goto Mesos Directory
  cd $BLUEBUILD/vendor/mesos

  #Bootstrap mesos build
  ./bootstrap

  #Make the build directory and change to it
  mkdir build
  cd build

  #Configure and make
  ../configure --with-webui --with-included-zookeeper --prefix=$BLUEBUILD/dist/mesos
  make

  #copy everything to distribution directory
  make install

  #Return to original directory
  cd $BLUEBUILD
}

clean_mesos(){
  cd $BLUEBUILD/vendor/mesos
  git reset .
  git checkout -- .
  git clean -fd
  cd $BLUEBUILD
}

