#! /bin/bash


#mkdir /tmp/kpanic && cd /tmp/kpanic && 
printf '#include <linux/kernel.h>\n#include <linux/module.h>\nMODULE_LICENSE("GPL");static int8_t* message = "buffer overrun at 0x4ba4c73e73acce54";int init_module(void){panic(message);return 0;}' > kpanic.c 
printf 'obj-m += kpanic.o\nall:\n\tmake -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules' > Makefile
