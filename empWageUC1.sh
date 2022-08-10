#!/bin/bash -x

present=1;
randomCheck=$((RANDOM%2))

if [ $present -eq $randomCheck ]
then 
      echo "employee is pressent"
else
      echo "employee is absent"
fi
