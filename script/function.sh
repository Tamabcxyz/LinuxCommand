#!/bin/bash
function myfunc1(){
    echo "this is my function1"
}

myfunc2(){
    echo "this is my function"
}
myfunc2

calculate_sum() {
    local a="$1"
    local b="$2"
    local result=$((a + b))
    return "$result"
}

# Call the function and capture the return value
calculate_sum 5 7
sum_result=$?

echo "The sum is $sum_result"
