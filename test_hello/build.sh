#!/bin/sh

if [ $# != 1 ];then
	echo "Please use ./build.sh 1 (-build kernel with source) \n        or ./build.sh 2 (-build kernel with binary)!"
	exit 1
fi

rm -f *.o hello mykernel.cl.*

if [ $1 = 1 ];then
	CFLAGS+=-DKERNEL_WITH_SOURCE
else
	CFLAGS+=-DKERNEL_WITH_BINARY
fi
clang -c -Os ${CFLAGS} -Wall -arch x86_64 -o hello.o hello.c
/System/Library/Frameworks/OpenCL.framework/Libraries/openclc \
    -c -Wall -emit-llvm -arch gpu_32 -o mykernel.cl.gpu_32.bc mykernel.cl
clang -framework OpenCL -o hello hello.o
