#!/bin/bash

FLAVOR="nord"

set -ex

cd "$(dirname "$0")"

conky -d -c "$FLAVOR.conf" &>/dev/null
