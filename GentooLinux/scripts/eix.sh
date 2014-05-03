#!/bin/bash

chroot /mnt/gentoo /bin/bash <<'EOF'
emerge app-portage/eix
eix-update
cat "*" > /etc/eix-sync.conf
eix-sync
EOF

