#!/bin/bash
declare -A FRUITS_COLOR
FRUITS_COLOR["apple"]="red"
FRUITS_COLOR["banana"]="yellow"
FRUITS_COLOR["cherry"]="green"

for fruit in "${!FRUITS_COLOR[@]}"; do
    echo "The fruit is $fruit."
done

for color in "${FRUITS_COLOR[@]}"; do
    echo "The color is $color."
done

COUNTER=1
while [ $COUNTER -le 5 ]; do
    echo "Interation $COUNTER"
    ((COUNTER++))
done
