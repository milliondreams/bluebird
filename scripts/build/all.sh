#/bin/bash

. $BLUEBUILD/scripts/build/mesos.sh
. $BLUEBUILD/scripts/build/hadoop.sh

build_all(){
  build_mesos
  build_hadoop
}


