#!/bin/sh

# avoid continuing when errors or undefined variables are present
set -eu

# the actual call
sh -c "lerna $*"