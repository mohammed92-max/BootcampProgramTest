#!/bin/bash -x
isPartTime=1;
isFullTime=2;
EmployeeRatePerHour=20;
randomCheck=$((RANDOM%3));
if [ $isPartTime -eq $randomCheck ]
then
        workingHour=4;
elif [ $isFullTime -eq $randomCheck ]
then
        workingHour=8;
else
        workingHour=0;
fi
salary=$(($workingHour * $EmployeeRatePerHour));
echo $salary;


