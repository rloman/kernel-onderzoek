#! /bin/bash

sudo mknod /dev/chardev c 247 0
sudo chmod 766 /dev/chardev
