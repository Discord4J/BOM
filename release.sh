#!/bin/bash
if [ -z "$1" ]
  then
    echo "Version argument missing"
    exit 1
fi
./gradlew "$@" publishToMavenLocal bintrayUpload
