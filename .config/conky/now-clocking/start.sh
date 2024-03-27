#!/bin/bash

set -ex

cd "$(dirname "$0")"

conky -c ./conky/np.lua -d &>/dev/null
conky -c ./conky/npart.lua -d &> /dev/null
