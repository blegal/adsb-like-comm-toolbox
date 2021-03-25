#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/oasa/Documents/ef/adsb-like-comm-toolbox/src/HLS_RECEIVER_FIXED_ACC/solution1/.autopilot/db/a.g.bc ${1+"$@"}
