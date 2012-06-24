#!/bin/bash
. ./scripts/build/setenv.sh

setenv 

if [ $1 != "clean" ];
then
  makedirs
fi

build_clean(){
  echo Cleaning . . .
  cd $BLUEBUILD
  rm -Rf ./dist

  for build_script in ./scripts/build/*.sh;
  do
    . $build_script
  done

  clean_mesos
}

buildthis(){
  if [ -f ./scripts/build/$1.sh ];
  then
    . ./scripts/build/$1.sh
  fi

  if [ `type -t build_$1`"x" == "functionx" ];
  then
    build_$1
    if [ `type -t dist_$1`"x" == "functionx" ];
    then
      dist_$1
    fi
  fi
  if [ $1 != "clean" ];
  then
    cp $BLUEBUILD/scripts/root/*.sh $BLUEBUILD/dist/
    cp $BLUEBUILD/scripts/install/setup.sh $BLUEBUILD/dist/scripts/install/setup.sh
  fi
}

if [ $# -gt 0 ];
then
  buildthis $1
else
  echo what to build?
fi


