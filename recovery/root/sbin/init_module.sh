#!/sbin/busybox sh

insmod /nand.ko
insmod /sw-device.ko debug_mask=0xff ctp_mask=1
insmod /sunxi_tr.ko
insmod /disp.ko
insmod /$(cat /sys/devices/sw_device/ctp).ko
