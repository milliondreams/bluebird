#!/bin/bash

if [ -z $BLUEDIST ];
then
  export  BLUEDIST="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
fi

for install_script in ./scripts/install/*.sh;
do
 . $install_script
done


for config_script in ./scripts/config/*.sh;
do
 . $config_script
done


installthis(){
  if [ -z $1 ]
  then
    copy_all $1
  else
    copy_all
  fi

  if [ -f ./scripts/install/$1.sh ];
  then
    . ./scripts/install/$1.sh
  fi

  if [ `type -t install_$1`"x" == "functionx" ];
  then
    install_$1
  fi
}

if [ $# -gt 0 ];
then
  installthis $1
else
  echo what to install?
fi


