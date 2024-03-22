#!/system/bin/sh

if [ ! -s /data/unencrypted/key/encrypted_key ]
then
sleep 5
fi

if [ ! -f /proc/tp_lockdown_info ]; then
rmmod goodix_core
mount /vendor_dlkm
insmod /vendor_dlkm/lib/modules/goodix_core.ko
umount /vendor_dlkm
fi
