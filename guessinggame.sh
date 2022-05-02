#!/usr/bin/env bash
# File: guessinggame.sh
# guessing game created by Ian Olivier for Unix Workbench Course"

	echo "Hi :) This is a guessing game where you guess how many files are in your current directory! Please run this code in the directory in which you want to count your files!"
	echo "Please enter your guess as a digit and press Enter:"
	
	#first count the number of files in the working directory:

function number_of_files {
	let number_of_files=$(ls | wc -l)-1
	}
	
read response #reads response of user

# next check how user's response compares to the actual number of files in the working directory

while [[ $response -ne $number_of_files ]]
do
	if [[ $response -gt $number_of_files ]]
	then
		echo "Guess is too high, try again"
	else
		echo "Guess is too low, try again"
	fi

	read response

done

	if [[ $response -eq $number_of_files ]]
	then
		echo "Your guess is correct! Congrats!"
	fi



