user=$1

if [ $# -ne 1 ]
  then
  echo "입력값 오류"
  exit 3
fi

user_last=$( who | grep -w "$user")

until user_last
do
  echo "$user 로그인안댐!"

  sleep 60
  
done

echo "$user 로그인함!"