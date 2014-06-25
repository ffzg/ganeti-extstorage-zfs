#!/bin/sh -x

gnt-cluster modify \
	--enabled-disk-templates plain,drbd,ext \
	--ipolicy-disk-templates plain,drbd,ext
