# Specify the kernel version
KVERSION = $(shell uname -r)

# The name of the module
obj-m += ublk_drv.o

# Path to the kernel build directory
KDIR := /lib/modules/$(KVERSION)/build

# Default target
all:
	make -C $(KDIR) M=$(PWD) modules

# Clean target
clean:
	make -C $(KDIR) M=$(PWD) clean
