#!/bin/bash -x
isPresent=1;
randomCheck=$((RANDOM%2));
if [ $isPresent -eq $randomCheck ]
then
        wagePerHour=20;
        workingHoursPerDay=8;
        wage=$(($wagePerHour * $workingHoursPerDay));
else
        wage=0;
fi
echo $wage;
