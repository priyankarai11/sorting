#!/bin/bash

declare -A  dict

echo "Arithmatic Computation and Sorting"
echo "Enter 3 inputs"
read a b c
w=$((a+(b*c)))
echo "Answer for first formula =$w"
x=$(((a*b)+c))
echo "Answer for second formula =$x"
y=$((c+(a/b)))
echo "Answer for third formula =$y"
z=$(((a%b)+c))
echo "Answer for fourth formula =$z"

echo "Storing in Dictionary"
echo " 1 . a+b*c 2 .a*b+c 3 . c+a/b 4 . a%b+c"
dict[1]=$w
dict[2]=$x
dict[3]=$y
dict[4]=$z
echo "Dictionary value =${dict[*]}"
