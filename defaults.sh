
# zfs pool and file system (existing) where to create block devices
test -z "$EXTP_ZFS" && EXTP_ZFS=tmp500g/block

# parameters for zfs create, by default
# -s	sparse
# -b 4k	block size sutable for ext4 filesystem which ganeti uses
# lz4	compression with low cpu operhead which always helps
test -z "$EXTP_VOL_PARAM" && EXTP_VOL_PARAM="-s -b 4k -o compression=lz4"
