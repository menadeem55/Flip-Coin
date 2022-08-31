#!/bin/bash -x
head=1
headCounter=0
tailCounter=0

while [ $headCounter -le 20 -a $tailCounter -le 20 ]
do
	flipCheck=$((RANDOM%2))
	if [ $head -eq $flipCheck ]
	then
		((headCounter++))
	else
		((tailCounter++))
	fi
done

if [ $headCounter -eq 21 ]
then
	winner=$(( $headCounter - $tailCounter ))
	echo "Head Wins by $winner points "
elif [ $tailCounter -eq 21 ]
then
	winner=$(( $tailCounter - $headCounter ))
	echo "Tail Wins by $winner points"
else
	echo Tie
fi
