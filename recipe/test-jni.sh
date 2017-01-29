#!/bin/bash

os=$(uname -s | tr '[:upper:]' '[:lower:]')
set -e
gcc \
	-I$JAVA_HOME/include 			\
	-I$JAVA_HOME/include/$os		\
	-L$JAVA_HOME/jre/lib/amd64/server 	\
	-ljvm					\
	-o vmtest				\
	test-jni/vmtest.c 
LD_LIBRARY_PATH=$JAVA_HOME/jre/lib/amd64/server ./vmtest
