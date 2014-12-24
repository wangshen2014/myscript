#!/bin/bash
bpc="tar cvpzf"
set -x
cd /
#$bpc bin.tgz /bin
#$bpc home.tgz /home
#$bpc lib.tgz /lib
#$bpc opt.tgz /opt
#$bpc run.tgz /run
#$bpc srv.tgz /srv
#$bpc usr.tgz /usr
#$bpc vmlinuz.old.tgz /vmlinuz.old
#$bpc boot.tgz /boot
#$bpc dev.tgz /dev
#$bpc initrd.img.tgz /initrd.img
#$bpc lib32.tgz /lib32
#$bpc media.tgz /media
$bpc proc.tgz /proc
#$bpc sbin.tgz /sbin
#$bpc sys.tgz /sys
#$bpc var.tgz /var
#$bpc build.tgz /build
#$bpc etc.tgz /etc
#$bpc initrd.img.old.tgz /initrd.img.old
#$bpc lib64.tgz /lib64
#$bpc root.tgz /root
#$bpc selinux.tgz /selinux
#$bpc vmlinuz.tag /vmlinuz
#$bpc lost+found.tgz /lost+found
#$bpc cdrom.tgz /cdrom
#$bpc mnt.tgz /mnt
#$bpc tmp.tgz /tmp
set +x
