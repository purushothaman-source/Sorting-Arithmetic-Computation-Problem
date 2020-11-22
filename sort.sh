#!/bin/bash
read -p "enter num1" num1
read -p "enter num2" num2
read -p "enter num3" num3
result1=$((num1+num2*num3))
echo "Result1:$result1"
result2=$((num1*num2+num3))
echo "Result2:$result2"
result3=$(echo $num1 $num2 $num3 |awk '{ print $3+$1/$2}')
echo "Result3:$result3"
result4=$((num1%num2+num3))
echo "Result4:$result4"
declare -A  values=( [0]=$result1 [1]=$result2 [2]=$result3 [3]=$result4 )
echo "Stored numbers in Dictionary:${values[@]}"
for ((i = 0; i<${#values[@]}; i++))
do

        for((j = 0; j<${#values[@]}-i-1; j++))
        do

                if [[ ${values[j]} -gt ${values[$((j+1))]} ]]
                then
                        # swap
                        temp=${values[j]}
                        values[$j]=${values[$((j+1))]}
                        values[$((j+1))]=$temp
                fi
        done
done

echo "Array in ascending order : ${values[*]}"

