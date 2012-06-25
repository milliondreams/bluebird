#!/bin/bash

if [ -z $BLUEBIRD ];
then
  export  BLUEBIRD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
fi

for stop_script in ./scripts/stop/*.sh;
do
 . $stop_script
done


stopthis(){
  echo running stop_$1
  if [ `type -t stop_$1`"x" == "functionx" ];
  then
    stop_$1
  fi
}

if [ $# -gt 0 ];
then
  stopthis $1
else
  echo what to stop?
fi


