#!/bin/bash

>output.txt

m=()
while read p; do
 



while IFS= read -r line; do
    m+=( "$line" )
done < <( grep -wnr $p $2)

done <"$1"

for i in "${m[@]}"
do
 IFS=':' read -a ADR <<< "$i"
c="Path: ${ADR[0]} LIne no: ${ADR[1]} Line: ${ADR[2]}"
echo "$c">>output.txt
done



