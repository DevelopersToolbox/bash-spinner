#!/usr/bin/env bash

# -------------------------------------------------------------------------------- #
# Description                                                                      #
# -------------------------------------------------------------------------------- #
# Display a small progress spinner in bash while running your commands with an     #
# optional message.                                                                #
# -------------------------------------------------------------------------------- #

# -------------------------------------------------------------------------------- #
# Draw Spinner                                                                     #
# -------------------------------------------------------------------------------- #
# Draw the actual spinner on the screen, suffixed by the message (if given). This  #
# function will sit in an infinite loop as the stop script is used to terminate    #
# the function.                                                                    #
#                                                                                  #
# NOTE: Do not call this function directly!                                        #
# -------------------------------------------------------------------------------- #

function draw_spinner()
{
    # shellcheck disable=SC1003
    local -a marks=( '/' '-' '\' '|' )
    local i=0

    delay=${SPINNER_DELAY:-0.25}
    message=${1:-}

    while :; do
        printf '%s\r' "${marks[i++ % ${#marks[@]}]} $message"
        sleep "${delay}"
    done
}

# -------------------------------------------------------------------------------- #
# Start Spinner                                                                    #
# -------------------------------------------------------------------------------- #
# A wrapper for starting the spiner, it will pass the message if supplied, and     #
# store the PID of the process for later termination.                              #
# -------------------------------------------------------------------------------- #

function start_spinner()
{
    message=${1:-}                                # Set optional message

    draw_spinner "${message}" &                   # Start the Spinner:

    SPIN_PID=$!                                   # Make a note of its Process ID (PID):

    declare -g SPIN_PID

    trap stop_spinner $(seq 0 15)
}

# -------------------------------------------------------------------------------- #
# Draw Spinner Eval                                                                #
# -------------------------------------------------------------------------------- #
# Draw the actual spinner on the screen, after evaluating the command to use the   #
# result as the message, function will sit in an infinite loop as the stop script  #
# is used to terminate the function.                                               #
#                                                                                  #
# NOTE: Do not call this function directly!                                        #
# -------------------------------------------------------------------------------- #

function draw_spinner_eval()
{
    # shellcheck disable=SC1003
    local -a marks=( '/' '-' '\' '|' )
    local i=0

    delay=${SPINNER_DELAY:-0.25}
    message=${1:-}

    while :; do
        message=$(eval "$1")
        printf '%s\r' "${marks[i++ % ${#marks[@]}]} $message"
        sleep "${delay}"
        printf '\033[2K'
    done
}

# -------------------------------------------------------------------------------- #
# Start Spinner Eval                                                               #
# -------------------------------------------------------------------------------- #
# A wrapper for starting the spiner, it will pass the command to be evaluated, and #
# store the PID of the process for later termination.                              #
# -------------------------------------------------------------------------------- #

function start_spinner_eval()
{
    command=${1}                                  # Set the command

    if [[ -z "${command}" ]]; then
        echo "You MUST supply a command"
        exit
    fi

    draw_spinner_eval "${command}" &              # Start the Spinner:

    SPIN_PID=$!                                   # Make a note of its Process ID (PID):

    declare -g SPIN_PID

    trap stop_spinner $(seq 0 15)
}

# -------------------------------------------------------------------------------- #
# Stop Spinner                                                                     #
# -------------------------------------------------------------------------------- #
# A wrapper for stopping the spinner, this simply kills off the process.           #
# -------------------------------------------------------------------------------- #

function stop_spinner()
{
    if [[ "${SPIN_PID}" -gt 0 ]]; then
        kill -9 $SPIN_PID > /dev/null 2>&1;
    fi
    SPIN_PID=0
    printf '\033[2K'
}

# -------------------------------------------------------------------------------- #
# End of Script                                                                    #
# -------------------------------------------------------------------------------- #
# This is the end - nothing more to see here.                                      #
# -------------------------------------------------------------------------------- #