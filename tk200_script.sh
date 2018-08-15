#! /bin/sh
HARDWARE=`cat /proc/cpuinfo|grep m3352`
if [[ $HARDWARE != "" ]]
then
cp /mnt/usb_storage/tk200.qm /opt/tk200.qm
cp /mnt/usb_storage/lBOOKN.ttf /opt/lBOOKN.ttf
wr ln -sf /opt/lBOOKN.ttf /usr/lib/fonts/lBOOKN.ttf
else
cp /mnt/usb_storage/tk200.qm /opt/tk200.qm
cp /mnt/usb_storage/lBOOKN.ttf /opt/lBOOKN.ttf
ln -sf /opt/lBOOKN.ttf /usr/lib/fonts/lBOOKN.ttf
sync
fi

exit 0
