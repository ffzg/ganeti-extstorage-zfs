ssh `gnt-cluster getmaster` \
  gnt-instance add -t ext --disk=0:size=10G,provider=zfs \
	-o debootstrap+default \
	--no-name-check --no-ip-check \
	-B maxmem=1G -n arh-hw t-zfs


