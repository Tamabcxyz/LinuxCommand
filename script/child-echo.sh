#!/bin/bash

# Access the environment variable in the child process
echo "Environment variable in the child process: $MY_ENV_VARIABLE"
echo "Environment variable in the child process: ${MY_ENV_VARIABLE}"
declare #list out all 