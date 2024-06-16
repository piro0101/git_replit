#!/bin/bash/main.sh

. library.sh

echo "First off, do you have echo in your path? (1=yes, 2=no) "
read answer
while ! validint $answer 1 2 ; do
  echo "Try again. Do you have echo "
  echo "in your path? (1=yes, 2=no) "
  read answer
done

if ! checkForCmdInPath "echo" ; then
  echo "Nope, can't find the echo command."
else
  echo "The echo command is in the PATH."
fi

echo ""
echo "Enter a year you think might be a leap year: "
read year

while ! validint $year 1 9999 ; do
  echo "Please enter a year in the correct format: "
  read year
done

if isLeapYear $year ; then
  echo "You're right!  $year was a leap year."
else
  echo "Nope, that's not a leap year."
fi

exit 0