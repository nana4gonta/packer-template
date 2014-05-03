#!/bin/bash

chroot /mnt/gentoo /bin/bash <<'EOF'
emerge dhcpd
sed -i 's/^#\s*GRUB_CMDLINE_LINUX=.*/GRUB_CMDLINE_LINUX="net.ifnames=0"/' \
  /etc/default/grub
grub2-mkconfig -o /boot/grub/grub.cfg
ln -s /etc/init.d/net.lo /etc/init.d/net.enp0s3
rc-update add net.enp0s3 default
EOF
