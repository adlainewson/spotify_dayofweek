#!/bin/bash
#!/usr/bin/python

# Get data on the days of the week in music

# For each day of the week, count the number of occurrences 
dows=("monday" "tuesday" "wednesday" "thursday" "friday" "saturday" "sunday")
counts=()
cut -d, -f 2,7,9,10,11 tracks_features.csv > tmp.txt
for d in ${dows[@]}; do
   DAYCOUNT=$(cat tmp.txt | grep -i $d | wc -l )
   counts+=( $DAYCOUNT )
   echo $d,$DAYCOUNT 
done
rm tmp.txt

