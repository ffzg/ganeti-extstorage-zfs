#!/bin/sh -xe

find /usr/share/ganeti/extstorage/zfs/sbin/ -type f | xargs -i ln -v -s -f {} /sbin/

