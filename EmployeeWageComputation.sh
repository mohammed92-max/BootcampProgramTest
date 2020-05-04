IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=40;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

#VARIABLES
totalEmpHrs=0;
totalWorkingDays=0;

declare -A dailyWage;

function getWorkingHours() {
        local empCheck=$1
        case $empCheck in
                        $IS_FULL_TIME)
                                empHrs=8
                                ;;
                        $IS_PART_TIME)
                                empHrs=4
                                ;;
                        *)
                                empHrs=0
                                ;;
        esac
        echo $empHrs
}

function getEmpWage() {
local empHr=$1
echo $(($empHrs*$EMP_RATE_PER_HR))
}

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
        ((totalWorkingDays++))
        empCheck=$((RANDOM%3));
        empHrs="$(getWorkingHours $empCheck)"
        totalEmpHrs=$(($totalEmpHrs+$empHrs))
        #day="Day"
        dailyWage["Day "$totalWorkingDays]=$( getEmpWage $empHrs )
done

totalSalary=$(($totalEmpHrs*$EMP_RATE_PER_HR));
echo "Total Employee Hours.." $totalEmpHrs
echo "Total Employee salary.." $totalSalary

echo ${dailyWage[@]}
echo ${!dailyWage[@]}



