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
  echo Installing in $2
  if [ -z $2 ]
  then
    copy_all
  else
    copy_all $2
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

if [ $# -eq 1 ];
then
  echo Will install to ~/bluebird
  installthis $1
elif [ $# -eq 2 ];
then
  echo Will install to $2
  installthis $1 $2
else 
  echo what to install?
fi


