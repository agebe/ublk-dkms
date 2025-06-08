# ublk-dkms
dkms for in-tree module [ublk_drv](https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/drivers/block/ublk_drv.c) which is currently not included in debian bookworm.

load the module after install.

```
modprobe ublk_drv
lsmod | grep ublk
modinfo ublk_drv
```

# DKMS
how to build a debian dkms package [tutorial](https://vincent.bernat.ch/en/blog/2018-packaging-driver-debian-dkms)

# Notes

check for changes in ublk_drv.c like so:

```
git clone git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git
git diff v6.1.123 v6.1.140 drivers/block/ublk_drv.c
```
