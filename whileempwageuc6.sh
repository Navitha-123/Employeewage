#!/bin/bash -x

parttime=1
fulltime=2
empRatePerHour=20
maxhoursmonth=100
numworkingdays=20
totalemphours=0
totalworkingdays=0

while [[ $totalemphours -lt $maxhoursmonth && $totalworkingdays -lt $numworkingdays ]]
do
	((totalworkingdays++))
	randomCheck=$((RANDOM%3))
        case $randomCheck in
        	$fulltime)
                	emphours=16;;
        	$parttime)
                	emphours=8;;
        	*)
                	emphours=0;;
esac
	
	totalemphours=$(($totalemphours+$emphours))
done

monthlywage=$(($totalemphours+$empRatePerHour))
