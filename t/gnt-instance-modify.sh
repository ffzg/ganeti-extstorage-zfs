./bin/instance stop t-plain
./bin/instance modify -t drbd -n box02 t-plain
./bin/instance rename --no-ip-check --no-name-check t-plain t-plain-drbd
./bin/instance failover t-plain-drbd
./bin/instance modify -t plain t-plain-drbd
./bin/instance rename --no-ip-check --no-name-check t-plain-drbd t-plain-remote
./bin/instance start t-plain-remote
