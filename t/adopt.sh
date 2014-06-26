./bin/adopt

ssh `gnt-cluster getmaster` \
  gnt-instance add -t plain --disk=0:adopt=adopt \
	-o debootstrap+default \
	--no-start \
	--no-name-check --no-ip-check \
	-B maxmem=512M -n arh-hw t-adopt


