#!/bin/bash
## Purpose:: To show printf formatting

line="============================================================"

header="%-10s %10s %10s \n"
format="%-10s %10s %11.2f\n"
printf "$header" "Name" "Subject" "Marks"
printf "%s\n" "$line"
printf "$format" \
       Sachin English 90\
       Dhoni  English 70\
       Virat  English 80
