#/bin/bash

install_all(){
  echo Installing everything . . .
  install_mesos
  install_hadoop
  install_hive
  install_scala
  install_spark
}


