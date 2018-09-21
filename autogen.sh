#!/bin/sh

AUTORECONF="$(which autoreconf)"
if test -z "$AUTORECONF"
then
    echo "*** Error: cannot find autoreconf"
    exit 1
fi
"$AUTORECONF" --force --install --verbose || exit $?
