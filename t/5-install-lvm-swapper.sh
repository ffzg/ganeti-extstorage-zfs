#!/bin/sh -xe

find /usr/share/ganeti/extstorage/zfs/sbin/ -type f | xargs -i ln -v -s -f {} /sbin/

pvs --noheadings --nosuffix --units=m --unbuffered '--separator=|' -opv_name,vg_name,pv_free,pv_attr,pv_size,pv_name
