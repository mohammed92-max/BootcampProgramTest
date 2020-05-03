#!/bin/bash -x
isPartTime=1;
isFullTime=2;
employeeRatePerHour=20;
empCheck=$((RANDOM%3));
case $empCheck in
        $isPartTime)
                empHours=4
                ;;
        $isFullTime)
                empHours=8
                ;;
        *)
                empHours=0
                ;;
esac
salary=$(($empHours * $employeeRatePerHour));
echo $salary;

