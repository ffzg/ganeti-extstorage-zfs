# debugging options
#set -x
#set >&2

dir=/usr/share/ganeti/extstorage/zfs/

# zfs pool and file system (existing) where to create block devices
test -z "$EXTP_ZFS" && EXTP_ZFS=tmp500g/block

# parameters for zfs create, by default
# -s	sparse
# -b 4k	block size sutable for ext4 filesystem which ganeti uses
# lz4	compression with low cpu operhead which always helps
test -z "$EXTP_CREATE" && EXTP_CREATE="-s -b 4k -o compression=lz4"

# on zfs destroy remove snapshots of instance disks
test -z "$EXTP_DESTROY" && EXTP_DESTROY="-r"

# emulate VG configured in cluster for wrapper scripts in sbin
test -z "$EXTP_VG" && EXTP_VG='ffzgvg'
