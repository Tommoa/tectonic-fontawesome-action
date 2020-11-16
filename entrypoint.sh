#!/usr/bin/env bash

set -e
echo "Compiling $1"

tectonic -k -r0 $1
set +e
biber $(dirname $1)/$(basename $1 .tex)
set -e
tectonic $1
