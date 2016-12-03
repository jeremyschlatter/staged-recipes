#!/bin/sh

# Detect and store whether or not GOROOT is already set.
# Technique explained at http://stackoverflow.com/a/13864829/1935144
if [ -z ${GOROOT+x} ]
then
    export GOROOT_HAS_PREVIOUS=1
    export GOROOT_PREVIOUS="$GOROOT"
else
    export GOROOT_HAS_PREVIOUS=0
fi

# Magic string that Anaconda replaces at install time
export GOROOT="/opt/anaconda1anaconda2anaconda3/go"
