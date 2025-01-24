#!/bin/bash
./clean.sh
( cd ublk-dkms; dpkg-buildpackage -us -uc )
