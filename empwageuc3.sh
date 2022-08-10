#!/bin/bash -x

parttime=1
fulltime=2
empRatePerHour=20
randomCheck=$((RANDOM%2))

if [ $fulltime -eq $randomCheck ]
then
	empHours=16
elif [ $parttime -eq $randomCheck ]
then
	empHours=8
else
	empHours=0
fi

dailywage=$(($empRatePerHour*$empHours))
