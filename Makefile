
obj-m := usbkbd.o

KERNEL_DIR = /usr/src/linux-headers-$(shell uname -r)

all:
	$(MAKE) -C $(KERNEL_DIR) SUBDIRS=$(shell pwd)
	
app: 
	gcc -pthread -o deadlock1 deadlock1.c

clean:
	rm -rf *.o *.ko *.mod.* *.symvers *.order *~
