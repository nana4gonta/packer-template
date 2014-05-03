#!/bin/bash

tarball=stage3-amd64-$STAGE3.tar.bz2

mount /dev/sda4 /mnt/gentoo

cd /mnt/gentoo
wget $MIRROR/releases/amd64/autobuilds/$STAGE3/$tarball
tar xjpf $tarball
rm -f $tarball
