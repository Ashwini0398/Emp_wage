#! /bin/bash -x

echo " employee wage problems "
Is_Present_Full_Time=1
Is_Present_Part_Time=2
EMP_RATE_PER_HR=20

#define variable
empCheck=$((RANDOM%3))
empHrs=0

if [ $Is_Present_Full_Time -eq $empCheck ]
then
	empHrs=8
elif [ $Is_Present_Part_Time -eq $empCheck ]
then
	empHrs=4

else
	empHrs=0

fi
 salary=$((  $empHrs * $EMP_RATE_PER_HR ))
