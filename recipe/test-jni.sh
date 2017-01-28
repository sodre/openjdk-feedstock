#!/bin/bash

set -e
gcc \
	-I$JAVA_HOME/include 			\
	-I$JAVA_HOME/include/linux 		\
	-L$JAVA_HOME/jre/lib/amd64/server 	\
	-ljvm					\
	-Wl,-rpath,'$ORIGIN/jre/lib/amd64/server'	\
	-o vmtest				\
	test-jni/vmtest.c 
./vmtest
