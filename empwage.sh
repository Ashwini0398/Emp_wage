#! /bin/bash -x

echo " employee wage problems " 
Is_Present_Full_Time=1 Is_Present_Part_Time=2 
EMP_RATE_PER_HR=20 
Working_Days=20


for((i=0;i<=Working_Days;i++))
do
#define variable
empCheck=$((RANDOM%3))
empHrs=0

case $empCheck in

$Is_Present_Full_Time)empHrs=8
        ;;
$Is_Present_Part_Time) empHrs=4
        ;;
        *) empHrs=0
        ;;
esac
salary=$(( $empHrs * $Emp_Rate_Per_Hr ))

done

