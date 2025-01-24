#!/bin/bash
./clean.sh
VERSION=$(head -n 1 ublk-dkms/debian/changelog | cut -d "(" -f2 | cut -d ")" -f1)
echo $VERSION
curl -o ublk-dkms/debian/src/ublk_drv.c -L "https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/plain/drivers/block/ublk_drv.c?h=v$VERSION"
( cd ublk-dkms; dpkg-buildpackage -us -uc )
