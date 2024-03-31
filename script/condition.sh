#!/bin/bash
# Double Parentheses ((expression)): This is primarily used for arithmetic operations and comparisons
# Double Brackets [[ expression ]]: This is used for conditional expressions and string comparisons
# The =~ operator in Bash is used for pattern matching
((result = 5 + 3))
echo "Result: $result"

# Comparison
if ((result > 5)); then
    echo "Result is greater than 5"
fi

NAME="Alice"
if [[ "$NAME" == "Alice" ]]; then
    echo "Hello Alice"
fi

FILE_PATH="/home/kali/Desktop/LinuxCommand/script/condition.sh"
if [[ -f "$FILE_PATH" ]]; then
    echo "$FILE_PATH is exist"
else
    echo "not exist"
fi

string="Hello, World!"
if [[ "$string" =~ "Worl" ]]; then #
    echo "$string have Worl"
else
    echo "$string do not have Worl"
fi