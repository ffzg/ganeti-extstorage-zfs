#!/bin/sh -x

./bin/ill t- | grep ^t- | awk '{ print $1 }' | xargs -i ./bin/instance remove -f {}
