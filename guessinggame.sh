#!/usr/bin/env bash
# File: guessinggame.sh

function check {
	if [[ $1 -lt 3 ]]
	then
		echo "Your guess is too low"
	elif [[ $1 -gt 3 ]]
	then
		echo "Your guess is too high"
	fi
}

count=0
while [[ count -eq 0 ]]
do
	echo "Guess the number of  files in the current directory and then press ENTER:"
	read response
	echo "You entered $response"
	if [[ $response -eq 3 ]]
	then
		echo "Your answer is correct. Congratulations"
		count=1
	else
		echo "Your answer is incorrect"
		check $response
	fi 
done
