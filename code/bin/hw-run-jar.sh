#!/usr/bin/env bash

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-10.jdk/Contents/Home
export PATH=${JAVA_HOME}/bin:$PATH

time java -XX:AOTLibrary=./output/helloworld.lib.so \
    -XX:+PrintAOT \
    -cp helloworld/target/helloworld-1.0-SNAPSHOT.jar \
    net.sweblog.jm18.aot.hw.HelloWorld

echo "-------"

time java \
    -cp helloworld/target/helloworld-1.0-SNAPSHOT.jar \
    net.sweblog.jm18.aot.hw.HelloWorld

echo "-------"
