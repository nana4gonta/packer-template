#!/bin/bash

if [[ -z $STAGE3 ]]
then
    echo "STAGE3 environment variable must be set to a timestamp."
    exit 1
fi

chmod 777 -R $DEST_SCRIPTS/scripts

for script in \
    partition   \
    stage3      \
    mounts      \
    resolv.conf \
    portage     \
    make.conf   \
    locale      \
    timezone    \
    fstab       \
    kernel      \
    grub        \
    virtualbox  \
    network     \
    eix         \
    emerge      \
    vagrant     \
    cleanup
do
    "$DEST_SCRIPTS/scripts/$script.sh"  
done

echo "All done."
