#!/bin/bash

ARCH=arm
TREE="../../../device/samsung/infuse4g"

make clean mrproper
make aries_infuse4g_defconfig
make -j8

for m in `find . -name *.ko`
do
  cp $m $TREE/modules
done
cp arch/arm/boot/zImage $TREE/kernel
