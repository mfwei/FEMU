#!/bin/bash

__BUILD_DIR=../build-femu

if [ ! -d $__BUILD_DIR ] ; then
	mkdir -p $__BUILD_DIR
	cp -v ../femu-scripts/femu-copy-scripts.sh $__BUILD_DIR
	cd $__BUILD_DIR
	./femu-copy-scripts.sh
	./pkgdep.sh
	cd -
fi

cd $__BUILD_DIR
./femu-compile.sh
