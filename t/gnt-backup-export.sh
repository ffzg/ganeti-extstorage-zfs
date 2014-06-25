#!/bin/sh -xe

./bin/ill t- | awk '{ print $1 }' | xargs -i ssh `gnt-cluster getmaster` gnt-backup export -n arh-hw {}
./bin/backup list -n arh-hw | grep t-

