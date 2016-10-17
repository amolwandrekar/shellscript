#!/bin/bash
read -p "Please enter Four digit birth year:" birth_year
current_year=$(date +%Y)
if [[ -z $birth_year ]]
then 
   echo "Invalid input"
   exit 1
elif [[ ! $birth_year =~ [0-9]{4} ]]
then
   echo "Invalid input"
   exit 1
elif (( birth_year > current_year ))
then
   echo "Invalid input"
   exit 1
fi
echo "My age is:" $((current_year - birth_year))


