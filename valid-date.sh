may=$1
day=$2
year=$3

may1=$(echo "$may" | cut -c1 )
may2=$(echo "$may" | cut -c2- )

may_first=$(echo "$may1" | tr '[a-z]' '[A-Z]')
may_next=$(echo "$may2" | tr '[A-Z]' '[a-z]')
may_result="$may_first$may_next"

if [ $# -ne 3 ]
    then
    echo "시스템 오류 인수가 3개가 아닙니다"
    echo "$may_result"
    exit 3
fi

if [ $may -eq 1 ] || [ $may_result -eq January ] || [ $may_result -eq Jan ] || [ $may -eq 3 ] || [ $may_result -eq March ] || [ $may_result -eq Mar ]|| [ $may -eq 5 ] || [ $may_result -eq May ]|| [ $may -eq 7 ] || [ $may_result -eq July ] || [ $may_result -eq Jul ]|| [ $may -eq 8 ] || [ $may_result -eq  August ] || [ $may_result -eq Aug ] || [ $may_result -eq Jul ] || [ $may -eq 10 ] || [ $may_result -eq  October ] || [ $may_result -eq Oct ] || [ $may -eq 12 ] || [ $may_result -eq  December ] || [ $may_result -eq Dec ]
  then
  allday=31
elif [ $may -eq 1 ] || [ $may_result -eq January ] || [ $may_result -eq Jan ]
  then
  allday=
if [ $((year % 4)) -ne 0 ]
  then
  echo $year "년도는 윤년이 아닙니다."
  check=true
elif [ $((year % 400)) -eq 0 ]
  then
  echo $year "년도는 윤년입니다."
  check=true
elif [ $((year % 100)) -eq 0 ]
  then
  echo $year "년도는 윤년이 아닙니다." 
  check=true
else
  echo $year "년도는 윤년입니다."
  check=true
fi
