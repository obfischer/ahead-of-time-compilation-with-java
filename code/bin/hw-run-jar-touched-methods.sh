#!/usr/bin/env bash

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-10.jdk/Contents/Home
export PATH=${JAVA_HOME}/bin:$PATH

java \
    -cp helloworld/target/helloworld-1.0-SNAPSHOT.jar \
    -XX:+LogTouchedMethods \
    -XX:+PrintTouchedMethodsAtExit \
    net.sweblog.jm18.aot.hw.HelloWorld

#    -XX:+UnlockDiagnosticVMOptions \
 #   -XX:+PrintAOT \
