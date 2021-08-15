#!/bin/bash
a=( "$@" )

echo ${#a[@]}
t=0
for i in ${a[@]}; do
  let t=t+$i**3
done
echo "$t" 
