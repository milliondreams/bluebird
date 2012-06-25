#/bin/bash

. $BLUEBUILD/scripts/build/mesos.sh
. $BLUEBUILD/scripts/build/hadoop.sh

build_all(){
  sh $BLUEBUILD/build.sh mesos
  sh $BLUEBUILD/build.sh hadoop
  sh $BLUEBUILD/build.sh hive

  cp -r $BLUEBUILD/scripts/config/ $BLUEBUILD/dist/scripts/
  cp -r $BLUEBUILD/scripts/install/ $BLUEBUILD/dist/scripts/
  cp -r $BLUEBUILD/scripts/run/ $BLUEBUILD/dist/scripts/
  cp -r $BLUEBUILD/scripts/stop/ $BLUEBUILD/dist/scripts/

}


