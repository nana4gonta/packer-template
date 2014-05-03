#!/bin/bash

chroot /mnt/gentoo /bin/bash <<'EOF'
cat > /etc/portage/make.conf <<'DATA'
CFLAGS="-O2 -march=native -pipe"
CXXFLAGS="${CFLAGS}"
MAKEOPTS="-j2"
CHOST="i686-pc-linux-gnu"

USE="bindist"
PORTDIR="/usr/portage"
DISTDIR="${PORTDIR}/distfiles"
PKGDIR="${PORTDIR}/packages"

FEATURES="ccache parallel-fetch metadata-transfer"
CCACHE_DIR="/var/tmp/ccache"
CCACHE_SIZR=2G

GENTOO_MIRRORS="ftp://ftp.iij.ad.jp/pub/linux/gentoo/ rsync://ftp.iij.ad.jp/pub/linux/gentoo/ http://ftp.iij.ad.jp/pub/linux/gentoo/ rsync://ftp.jaist.ac.jp/pub/Linux/Gentoo/ http://ftp.jaist.ac.jp/pub/Linux/Gentoo/ ftp://ftp.jaist.ac.jp/pub/Linux/Gentoo/"
SYNC="rsync://rsync3.jp.gentoo.org/gentoo-portage"

LINGUAS="ja"
DATA
EOF
