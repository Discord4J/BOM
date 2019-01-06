#!/bin/bash
if [ -z "$1" ]
  then
    echo "Version argument missing"
    exit 1
fi
./gradlew -Pversion="$1" -Pdiscord4jVersion="$1" -Pdiscord4jJitpackVersion="$1" -PstoresVersion="$1" -PstoresJitpackVersion="$1" publishToMavenLocal bintrayUpload
