#!/bin/sh -xe

# this scripts assueme that host on which you are doing gnt-backup is localhost

./bin/ill t- | awk '{ print $1 }' | xargs -i ssh `gnt-cluster getmaster` gnt-backup export -n `hostname -s` {}
./bin/backup list -n `hostname -s` | grep t-

