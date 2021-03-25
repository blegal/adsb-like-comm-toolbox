#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/oasa/Documents/ef/adsb-like-comm-toolbox/src/HLS_RECEIVER_FLOAT/solution1/.autopilot/db/a.g.bc ${1+"$@"}
