#!/usr/bin/env bash

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-10.jdk/Contents/Home
export PATH=${JAVA_HOME}/bin:$PATH


sudo java -Xshare:dump


echo "---"

set -x

time java \
    -Xshare:off \
    -cp helloworld/target/helloworld-1.0-SNAPSHOT.jar \
    net.sweblog.jm18.aot.hw.HelloWorld

set +x

echo "---"

set -x

time java \
    -Xshare:on \
    -cp helloworld/target/helloworld-1.0-SNAPSHOT.jar \
    net.sweblog.jm18.aot.hw.HelloWorld

