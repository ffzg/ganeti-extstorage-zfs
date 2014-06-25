#!/bin/sh -xe

gnt-instance stop t-plain
gnt-instance modify -t drbd -n box02 t-plain
gnt-instance rename --no-ip-check --no-name-check t-plain t-plain-drbd
gnt-instance failover t-plain-drbd
gnt-instance modify -t plain t-plain-drbd
gnt-instance rename --no-ip-check --no-name-check t-plain-drbd t-plain-remote
gnt-instance start t-plain-remote
