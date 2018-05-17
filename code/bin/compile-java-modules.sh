#!/usr/bin/env bash

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-10.jdk/Contents/Home
export PATH=${JAVA_HOME}/bin:$PATH

modules=(
#         java.activation
          java.base
          java.base.se
          java.compiler
#         java.corba
#         java.datatransfer
#         java.desktop
#         java.lang.instrument
        )

mkdir -p output


for m in ${modules[*]}; do
    shared=lib$(echo $m | tr . _).so
    rm -f output/${shared}
    jaotc --output output/${shared} --module ${m} --info
done


