#!/bin/bash -x

parttime=1
fulltime=2
empRatePerHour=20
randomCheck=$((RANDOM%3))
monthlywage=0
numworkingdays=20

for (( day=1; day<=$numworkingdays; day++ ))
do
	case $randomCheck in
	$fulltime)
		emphours=16;;
	$parttime)
		emphours=8;;
	*)
		emphours=0;;
esac
dailywage=$(($emphours*$empRatePerHour))
monthlywage=$(($monthlywage+$dailywage))
done
