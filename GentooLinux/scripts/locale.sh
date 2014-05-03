#!/bin/bash

chroot /mnt/gentoo /bin/bash <<'EOF'
cat > /etc/locale.gen <<'DATA'
ja_JP.UTF-8/UTF-8
DATA
EOF
