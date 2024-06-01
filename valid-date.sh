may=$1
day=$2
year=$3
#앞글자 대문자로
may1=$(echo "$may" | cut -c1 )
may2=$(echo "$may" | cut -c2- )


may_first=$(echo "$may1" | tr '[a-z]' '[A-Z]')
may_next=$(echo "$may2" | tr '[A-Z]' '[a-z]')
may_result="$may_first$may_next"


#인수 3개 아니면 안되는거
if [ $# -ne 3 ]
  then
  echo "시스템 오류 인수가 3개가 아닙니다"
  echo "$may_result"
  exit 3
fi

#월별 일수 정리
case "$may_result" in
  Jan|Mar|May|Jul|Aug|Oct|Dec|January|March|July|August|October|December|1|3|5|7|8|10|12) days_in_month=31;;
  Apr|Jun|Sep|Nov|April|June|September|November|2|4|6|9|11) days_in_month=30;;
  Feb|February|2)
    if [ $is_leap -eq 1 ]; then
            days_in_month=29
        else
            days_in_month=28
        fi
        ;;
esac

case "$may_result" in
    Jan|January|1) may_result="Jan";;
    Feb|February|2) may_result="Feb";;
    Mar|March|3) may_result="Mar";;
    Apr|April|4) may_result="Apr";;
    May|5) may_result="May";;
    Jun|June|6) may_result="Jun";;
    Jul|July|7) may_result="Jul";;
    Aug|August|8) may_result="Aug";;
    Sep|September|9) may_result="Sep";;
    Oct|October|10) may_result="Oct";;
    Nov|November|11) may_result="Nov";;
    Dec|December|12) may_result="Dec";;
    *)
        echo "$may_result월은 유효한 월이 아닙니다."
        exit 1
        ;;
esac

#일수 다르면 오류문
if [ $day -lt 1 ] || [ $day -gt $days_in_month ]
  then
  echo "이유 : $day일은 유효하지 않습니다"
fi


#윤년확인
is_leap=0
if (( year % 4 == 0 )); then
    if (( year % 400 == 0 )); then
        is_leap=1
        echo "윤년입니다"
    elif (( year % 100 == 0 )); then
        is_leap=0
        echo "윤년이 아닙니다"
    else
        is_leap=1
        echo "윤년입니다"
    fi
fi


  
echo "$may_result $day $year"