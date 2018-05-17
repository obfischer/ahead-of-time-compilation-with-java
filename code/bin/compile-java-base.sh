#!/usr/bin/env bash

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-10.jdk/Contents/Home
export PATH=${JAVA_HOME}/bin:$PATH


mkdir output

jaotc --output output/java_base.so --module java.base --info

