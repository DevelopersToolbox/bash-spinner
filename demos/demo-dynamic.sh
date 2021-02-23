#!/usr/bin/env bash

# -------------------------------------------------------------------------------- #
# Description                                                                      #
# -------------------------------------------------------------------------------- #
# This is a very simple example of how to make use of the spinner script.          #
# -------------------------------------------------------------------------------- #

# -------------------------------------------------------------------------------- #
# Use the source                                                                   #
# -------------------------------------------------------------------------------- #
# Source the os-detect script to make the variables available.                     #
# -------------------------------------------------------------------------------- #

SCRIPTPATH="$( dirname "$( cd "$(dirname "$0")" >/dev/null 2>&1 || exit ; pwd -P )" )"

# shellcheck disable=SC1090
source "${SCRIPTPATH}"/src/spinner.sh

echo "About to execute 10 times"

start_spinner_eval 'cat log | tail -1'

for i in {1..10}; do
    echo "Iteration number ${i}" >> log
    sleep 1
done

stop_spinner

echo
echo "Finished."

# -------------------------------------------------------------------------------- #
# End of Script                                                                    #
# -------------------------------------------------------------------------------- #
# This is the end - nothing more to see here.                                      #
# -------------------------------------------------------------------------------- #

