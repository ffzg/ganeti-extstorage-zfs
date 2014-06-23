
# pool and path where to create block devices
test -z "$EXTP_BLOCK" && EXTP_BLOCK=tmp500g/block

# parameters for zfs create
test -z "$EXTP_VOL_PARAM" && EXTP_VOL_PARAM="-s -b 4k -o compression=lz4"
