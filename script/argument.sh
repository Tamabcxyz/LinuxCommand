#!/bin/bash
# ./argument.sh arg1 arg2 "arg 3" arg4
# bash -i ./argument.sh arg1 arg2 "arg 3" arg4
# "$*" is equivalent to "$1c$2c..."
# "$@" is equivalent to "$1" "$2" ...
# "$#" get number of argument
# "$?" get the exit status or store the value return by a function
# "$-" check option when using bash to run this script
# "$$" represents the process ID (PID) of the currently executing script or shell
# "$!" capture the PID of job most recently running in the background
echo "Total argument is $#"
echo "Total argument is $BASH_ARGC" # like $#
for i in "$@"; do
    echo "Argument $i"
done

# display the current shell options and their meanings
set -o
echo "Current shell options: $-"
# Check if the 'i' (interactive) option is set
if [[ $- == *i* ]]; then
    echo "The shell is running in interactive mode."
fi

# Check if the 'x' (xtrace) option is set
if [[ $- == *x* ]]; then
    echo "The shell is in xtrace mode."
fi

echo "Current process id is 1: $$"
echo "Current process id is 2: $BASHPID" # like $$

sleep 10 &
echo "Recently background process id is: $!"