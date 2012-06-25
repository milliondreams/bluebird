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
  if [ `type -t run_$1`"x" == "functionx" ];
  then
    run_$1
  fi
}

if [ $# -gt 0 ];
then
  runthis $1
else
  echo what to run?
fi


