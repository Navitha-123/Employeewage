#!/bin/bash -x

present=1
randomCheck=$((RANDOM%2))

if [ $present -eq $randomCheck ]
then
        empWagePerHours=20;
        empHour=8;
        dailyWage=$(($empWagePerHour*$empHour));
else
        dailyWage=0;
fi

