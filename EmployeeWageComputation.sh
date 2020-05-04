#!/bin/bash -x
isFullTime=1;
isPartTime=2;
totalSalary=0;
workingDays=20;
ratePerHour=20;

for((day=1; day<=workingDays; day++))
do
        empCheck=$((RANDOM%3))
        case $empCheck in
                $isFullTime)
                empHrs=8
                ;;
                $isPartTime)
                empHrs=4
                ;;
                *)
                empHrs=0
                ;;
        esac
salary=$(($empHrs * $ratePerHour))
totalSalary=$(($totalSalary + $salary));
done

echo "Total salary " $totalSalary
