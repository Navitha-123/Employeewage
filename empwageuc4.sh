#!/bin/bash -x

parttime=1
fulltime=2
empRatePerHour=20
randomCheck=$((RANDOM%2))

case $randomCheck  in 
	$fulltime)
		empHours=16
		;;
	$parttime)
		empHours=8	
		;;
	*)
		empHours=0
		;;
esac

dailywage=$(($empRatePerHour*$empHours))
