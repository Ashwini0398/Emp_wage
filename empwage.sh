#! /bin/bash -x

echo " employee wage problems " 
Is_Present_Full_Time=1 Is_Present_Part_Time=2 
EMP_RATE_PER_HR=20 
Working_Days=20
Max_Hrs=48


#define variable
 totalWorkingDays=0
totalEmpHrs=0

function getWorkingHrs()
{
        local emphrs=0
        local empcheck=$1
         case $empCheck in

                $Is_Present_Full_Time)empHrs=8
                ;;
                $Is_Present_Part_Time) empHrs=4
                ;;
                *) empHrs=0
                ;;
        esac
        echo $empHrs
}



while [ $totalWorkingDays -le $Working_Days ] && [ $totalEmpHrs -lt $Max_Hrs ]  
do

	#Define  variable

	empCheck=$((RANDOM%3))
	empHrs=0
	
	((totalWorkingDays++))
	empHrs="$( getWorkingHrs $empCheck )"
	totalEmpHrs=$(( $totalEmpHrs + $empHrs ))

done
salary=$(( $totalEmpHrs * $Emp_Rate_Per_Hr ))

