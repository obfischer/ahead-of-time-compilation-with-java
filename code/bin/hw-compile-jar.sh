#!/usr/bin/env bash

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-10.jdk/Contents/Home
export PATH=${JAVA_HOME}/bin:$PATH

mvn -f helloworld/pom.xml

mkdir -p output

set -x

pushd helloworld/target/

jaotc \
    --output ../../output/helloworld.lib.so \
    --search-path . \
    --verbose \
    --jar helloworld-1.0-SNAPSHOT.jar

popd

