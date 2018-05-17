#!/usr/bin/env bash

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-10.0.1.jdk/Contents/Home
export PATH=${JAVA_HOME}/bin:$PATH


sudo java -Xshare:dump

java \
    -XX:DumpLoadedClassList=classes.lst \
    -cp helloworld/target/helloworld-1.0-SNAPSHOT.jar \
    net.sweblog.jm18.aot.hw.HelloWorld

java \
       -XX:+UnlockCommercialFeatures \
       -XX:+UseAppCDS \
       -Xshare:dump \
       -XX:SharedClassListFile=classes.lst \
       -XX:SharedArchiveFile=appcds.cache \
    -cp helloworld/target/helloworld-1.0-SNAPSHOT.jar \
    net.sweblog.jm18.aot.hw.HelloWorld


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

echo "----"

time java \
       -XX:+UnlockCommercialFeatures \
       -XX:+UseAppCDS \
       -XX:SharedClassListFile=classes.lst \
       -XX:SharedArchiveFile=appcds.cache \
       -Xshare:on \
    -cp helloworld/target/helloworld-1.0-SNAPSHOT.jar \
    net.sweblog.jm18.aot.hw.HelloWorld

