#/bin/bash

set -ue

# Check number of commandline arguments.
# This script depends exec file path.

function usage() {
cat << _EOT_
Usage:
    $0 <execfile> [optional arguments]
_EOT_
exit 1
}

function compare() {

}

readonly EXEC="$1"
if [ ! -x $EXEC ]; then
    usage
fi
