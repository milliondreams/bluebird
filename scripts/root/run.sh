#!/bin/bash

if [ -z $BLUEBIRD ];
then
  export  BLUEBIRD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
fi

if [ -z $SCALA_HOME ];
then
  export  SCALA_HOME=$BLUEBIRD/scala
  export PATH=$PATH:$SCALA_HOME/bin
fi


for run_script in ./scripts/run/*.sh;
do
 . $run_script
done


runthis(){
  toRun="$1"
  shift
  if [ `type -t run_$toRun`"x" == "functionx" ];
  then
    run_$toRun $@
  fi
}

if [ $# -gt 0 ];
then
  runthis $@
else
  echo what to run?
fi


