#!/bin/sh

# Based on https://anaconda.org/insertinterestingnamehere/orfeo

# If GOROOT_HAS_PREVIOUS is not currently set,
# Assume the activate script was not run successfully,
# so, these particular environment variables don't
# need to be restored to a given former state.
if [ -z ${GOROOT_HAS_PREVIOUS+x} ]
then
    # End the script, but not the shell session immediately.
    return 0
fi

if [ $GOROOT_HAS_PREVIOUS = 1 ]
then
    export GOROOT="$GOROOT_PREVIOUS"
else
    unset GOROOT
fi

unset GOROOT_HAS_PREVIOUS
unset GOROOT_PREVIOUS
