ssh `gnt-cluster getmaster` \
  gnt-instance add -t drbd --disk=0:size=10G \
	-o debootstrap+default \
	--no-name-check --no-ip-check \
	-B maxmem=1G -n arh-hw:box02 t-drbd


