#!/bin/bash

FLAVOR="mocha"

set -ex

cd "$(dirname "$0")"

conky -d -c "$FLAVOR.conf" &>/dev/null
