#!/bin/bash
# https://man7.org/linux/man-pages/man1/bash.1.html
# https://tldp.org/LDP/abs/html/abs-guide.html
unset TEST
# ${TEST:-word} Use Default Values.  If parameter is unset or null, the expansion of word is substituted.  Otherwise, the value of parameter is substituted.
TEMP=${TEST:-"word"} #word only assign for TEMP variable not for TEST
echo "$TEST"
echo "$TEMP"

# ${parameter:=word} Assign Default Values.  If parameter is unset or null, the expansion of word is assigned to parameter
TEMP1=${TEST:="word"} #word assign for both TEMP1 and TEST variables
echo "$TEST"
echo "$TEMP1"

TEST1="haha"
# ${parameter:+word} Use Alternate Value.  If parameter is null or unset, nothing is substituted, otherwise the expansion of word is substituted.
TEMP2=${TEST1:+"hihi"} #if TEST1 empty the TEMP2 will be empty too
echo "$TEST1"
echo "$TEMP2"

TEST2="haha hihi"
# ${parameter:offset} and ${parameter:offset:length}
echo "${TEST2:1}" #substring from 1 to end string
echo "${TEST2:1:4}" #substring from 1 to 4 string

# ${!prefix*} and ${!prefix@} Names matching prefix.  Expands to the names of variables
fruit_apple="red"
fruit_banana="yellow"
fruit_cherry="red"

fruit1=${!fruit*}

for var1 in ${fruit1}; do
    echo "$var1"
done

fruit2=${!fruit@}
for var2 in ${fruit2}; do
    echo "$var2"
done

# ${parameter#word} and ${parameter##word} Remove matching prefix pattern
