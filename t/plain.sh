ssh `gnt-cluster getmaster` \
  gnt-instance add -t plain --disk=0:size=10G \
	-o debootstrap+default \
	--no-name-check --no-ip-check \
	-B maxmem=512M -n arh-hw t-plain


