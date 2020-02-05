#include <linux/kernel.h>
#include <linux/module.h>
MODULE_LICENSE("GPL");

static int8_t* message = "buffer overrun at 0x4ba4c73e73acce54";

int init_module(void){

	panic(message);
	return 0;
}
