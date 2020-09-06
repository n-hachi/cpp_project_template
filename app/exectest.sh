#/bin/bash

set -ue

# Check number of commandline arguments.
# This script depends exec file path.

function usage() {
cat << _EOT_
Usage:
    $EXEC <execfile> [optional arguments]
_EOT_
exit 1
}

function compare() {
ARGUMENT_="$1"
PREDICT_="$2"
ACTUAL_="$($EXEC $ARGUMENT_)"

if [ $ACTUAL_ != $PREDICT_ ]; then
    echo "predict = $PREDICT_ , actual = $ACTUAL_"
    return 1
fi
return 0
}

readonly EXEC="$1"
if [ ! -x $EXEC ]; then
    usage
fi

ACCUMULATE=0

# Normal case
ACCUMULATE=$(($(compare "0" "0") + $ACCUMULATE))
ACCUMULATE=$(($(compare "1" "1") + $ACCUMULATE))
ACCUMULATE=$(($(compare "2" "1") + $ACCUMULATE))
ACCUMULATE=$(($(compare "3" "2") + $ACCUMULATE))

# Error case
ERR=$(cat << _EOL_
index is required
Run with --help for more information.
_EOL_
)
ACCUMULATE=$(($(compare "" "$ERR") + $ACCUMULATE))
