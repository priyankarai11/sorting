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
arr=($w $x $y $z)
echo "Dictionary value =${dict[*]}"

echo "Array values are"
for i in "${dict[*]}"
do
	array[$y]=$i
	let y++
done

echo ${array[*]}



for ((i = 0; i<4; i++))
do
        for((j = $i; j<4; j++))
    do

        if [[ ${arr[i]} -lt ${arr[j]} ]]
        then
            temp=${arr[i]}
            arr[i]=${arr[j]}
            arr[j]=$temp
        fi
    done
done
echo "Sorted number in Descending order"
echo ${arr[*]}


for ((i = 0; i<4; i++))
do
        for((j = 0; j<4-i-1; j++))
    do

        if [[ ${arr[j]} -gt ${arr[$((j+1))]} ]]
        then
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}
            arr[$((j+1))]=$temp
        fi
    done
done
echo "Ascending order Sorted number"
echo ${arr[*]}
