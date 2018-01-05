#! /bin/bash

#first run make
sudo insmod oops.ko

echo See tail -f /var/log/syslog where an oops message should be printed

echo ... And ... after loading this module, removing using $ sudo rmmod oops should not be possible because of this
