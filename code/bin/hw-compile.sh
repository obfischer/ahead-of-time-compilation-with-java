#!/usr/bin/env bash

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-10.jdk/Contents/Home
export PATH=${JAVA_HOME}/bin:$PATH

mvn -f helloworld/pom.xml

mkdir outout

set -x

pushd helloworld/target/classes

jaotc \
    --output helloworld.so \
    --search-path . \
    --verbose \
    --class-name net.sweblog.jm18.aot.hw.HelloWorld

popd

