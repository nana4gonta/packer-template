#!/bin/bash

chroot /mnt/gentoo /bin/bash <<'EOF'
emerge sys-libs/timezone-data
ln -snf /usr/share/zoneinfo/Japan /etc/localtime
echo Japan > /etc/timezone
cat clock="local" > /etc/conf.d/hwclock
EOF
