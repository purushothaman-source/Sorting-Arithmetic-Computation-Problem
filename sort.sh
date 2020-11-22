#!/bin/bash
read -p "enter num1" num1
read -p "enter num2" num2
read -p "enter num3" num3
result1=$((num1+num2*num3))
echo "Result1:$result1"
result2=$((num1*num2+num3))
echo "Result2:$result2"
