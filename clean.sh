#!/bin/bash
rm -f ublk-dkms_*
( cd ublk-dkms; debian/rules clean )
#rm -rf ublksrv/debian/build
