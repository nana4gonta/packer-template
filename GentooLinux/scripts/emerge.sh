#!/bin/bash

chroot /mnt/gentoo /bin/bash <<'EOF'
emerge -uDN @world
EOF
