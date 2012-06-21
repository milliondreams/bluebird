#!/bin/bash

setenv(){
  if [ -z "$BLUEBIRD" ];
  then
    export  BLUEBIRD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
  fi
}
