#!/usr/bin/env bash
# File: guessinggame.sh

# "Fun to check that user has entered the number"
function cknumber {
	pat="^[0-9]+$"
	if [[ $1 =~ $pat ]] 
	then 
		echo "1"
	else
		echo "0"
	fi	
}

# main function
while true
do	
	echo "Guess, how many files are in the current directory?"
	read input
	count=$(cknumber $input) 
	noOfFiles=$(ls | wc -l)
	if [[ $count -gt 0 ]]
	then 
	# execute the program
		if [[ $input -gt $noOfFiles ]]
		then
			echo "Your guess is too high"
		elif [[ $input -lt $noOfFiles ]]
		then
			echo "Your guess is too low"
		else
			echo "Congratulations,your guess is right. There are $noOfFiles files in current dir"
			break
		fi
	else
		echo "Enter the integer number for guess!"		
	fi
done
