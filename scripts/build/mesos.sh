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

  #Return to original directory
  cd $BLUEBUILD
}

dist_mesos(){
  cd $BLUEBUILD/vendor/mesos/build
  
  make install
  
  cd $BLUEBUILD

  cp -r $BLUEBUILD/scripts/config/mesos.sh $BLUEBUILD/dist/scripts/config/mesos.sh
  cp -r $BLUEBUILD/scripts/install/mesos.sh $BLUEBUILD/dist/scripts/install/mesos.sh
  cp -r $BLUEBUILD/scripts/run/mesos.sh $BLUEBUILD/dist/scripts/run/mesos.sh
  cp -r $BLUEBUILD/scripts/stop/mesos.sh $BLUEBUILD/dist/scripts/stop/mesos.sh
}

clean_mesos(){
  echo Removing changes from mesos . . .
  cd $BLUEBUILD/vendor/mesos
  git reset .
  git checkout -- .
  git clean -fd
  cd $BLUEBUILD
}



