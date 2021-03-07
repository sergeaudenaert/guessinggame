#!/usr/bin/env bash
#File: guessinggame.sh

#Calculate the number of files in the directory and store it in numfiles
numfiles=$(ls -al | grep -v '^d' | wc -l)
let numfiles=numfiles-1
result='no guess yet'

#Function for testing the answer
verify_input () {
    if [[ $1 == $numfiles ]]
    then
      result='Congratulations! Your guess is correct'
    elif [[ $1 -gt $numfiles ]]
    then
      result='Your guess is too high'
    else
    result='Your guess is too low'
    fi
}

#check result using the function
while [ "$result" != "Congratulations! Your guess is correct" ]
do
  read -p 'How many files are in this directory? ' guessedfiles
  echo You guessed $guessedfiles
  verify_input $guessedfiles
  echo $result
done
