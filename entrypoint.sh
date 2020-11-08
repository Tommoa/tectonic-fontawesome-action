#!/usr/bin/env bash

set -e
echo "Compiling $1"

tectonic -w https://ttassets.z13.web.core.windows.net/tlextras-2020.0r0.tar -k -r0 $1
set +e
biber $(dirname $1)/$(basename $1 .tex)
set -e
tectonic -w https://ttassets.z13.web.core.windows.net/tlextras-2020.0r0.tar $1
