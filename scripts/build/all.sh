#/bin/bash

build_all(){
  sh $BLUEBUILD/build.sh mesos
  sh $BLUEBUILD/build.sh hadoop
  sh $BLUEBUILD/build.sh hive
  sh $BLUEBUILD/build.sh scala
  sh $BLUEBUILD/build.sh spark
  sh $BLUEBUILD/build.sh spark

  cp -r $BLUEBUILD/scripts/config/ $BLUEBUILD/dist/scripts/
  cp -r $BLUEBUILD/scripts/install/ $BLUEBUILD/dist/scripts/
  cp -r $BLUEBUILD/scripts/run/ $BLUEBUILD/dist/scripts/
  cp -r $BLUEBUILD/scripts/stop/ $BLUEBUILD/dist/scripts/

}


