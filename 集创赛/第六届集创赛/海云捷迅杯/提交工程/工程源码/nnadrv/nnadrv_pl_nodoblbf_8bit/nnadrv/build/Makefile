# Kernel Module Make File

# Kernel source tree
KSRC_DIR := ~/PycharmProjects/vm/software/linux-4.9.78

# Architecture and cross compile
ARCH := arm
CROSS_COMPILE := ~/PycharmProjects/vm/software/gcc-linaro-5.4.1-2017.05-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-

ifneq ($(KERNELRELEASE),)
# call from kernel build system

# Extra C compile flags
EXTRA_CFLAGS +=  -O3  -I$(M)/../inc

# Object file(s) to build kernel module, more dependency objects may included.
DRV_OBJS := ../src/nnadrv.o

nnadrv-objs := $(DRV_OBJS)

obj-m := nnadrv.o

else

PWD     := $(shell pwd)
SUBDIRS := build src

# Normal Makefile
all:
	@$(MAKE) -s -C $(KSRC_DIR) M=$(PWD) ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) modules

endif

# Cleanup your generated files
clean:
	for i in $(SUBDIRS) ; do cd ../$$i; rm -rf *.ko *.o *~ core .depend .*.cmd *.mod.c .tmp_versions; cd -; done

depend:

.PHONY : all clean

# End of file

