#!/bin/bash
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

