#!/bin/bash -x
randomCheck=$((RANDOM%2));
isPresent=1;
if [ $isPresent -eq $randomCheck ]
then
        echo "Employee is Present";
else
        echo "Employee is Absent";
fi






