#!/bin/bash
rm -f ublk-dkms_*
( cd ublk-dkms; debian/rules clean )
rm -f ublk-dkms/debian/src/ublk_drv.c
