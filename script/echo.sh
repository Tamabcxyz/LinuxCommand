#!/bin/bash
readonly MY_VAR="Tam"
TEST="Test"
# -i ( to declare an integer value). 
# -l (to declare a variable to convert to all lowercase letters)
# -u (to declare a variable to convert to all uppercase letters)
# -a (to declare an indexed array)
# -A (to declare an associative array)
# -n ( to declare a variable that references another variable)
# -x (to export the variable)
# -r (to make attributes read-only)
declare -i MY_VAR0=$MY_VAR
declare -l MY_VAR1=$MY_VAR 
declare -u MY_VAR2=$MY_VAR
echo "hello $MY_VAR"
echo "hello0 $MY_VAR0"
echo "hello1 $MY_VAR1"
echo "hello2 $MY_VAR2"

# Declare an indexed array
declare -a MY_ARR=("apple" "banana" "cherry")
echo "Arr0 ${MY_ARR[0]}"
echo "Arr0 ${#MY_ARR[@]}" #get number element in arr

# Declare an associative array
declare -A colors
colors["apple"]="red"
colors["banana"]="yellow"
colors["cherry"]="red"
echo "Arr1 ${colors["apple"]}"
echo "Arr1 ${#colors[*]}" #get number element in arr

declare -n ALIAS_TEST=TEST #specical in here ALIAS_TEST=TEST
echo "Original variable: $TEST"
echo "Alias variable: $ALIAS_TEST"

ALIAS_TEST="Modified text"
echo "Alias variable: $ALIAS_TEST"
echo "Original variable: $TEST"

unset ALIAS_TEST
echo "Alias variable: $ALIAS_TEST"
echo "Original variable: $TEST"

declare -x MY_ENV_VARIABLE="This is an environment variable"
echo "Environment variable in the script: $MY_ENV_VARIABLE"
chmod +x ./child-echo.sh
./child-echo.sh
