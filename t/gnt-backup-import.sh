#gnt-instance remove t-drbd
#gnt-backup import -t drbd -n arh-hw:box02 --no-name-check --no-ip-check t-drbd

gnt-instance remove t-plain-remote # same MAC
gnt-backup import -t plain -n arh-hw --no-name-check --no-ip-check t-plain
