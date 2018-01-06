#!/usr/bin/env bash
# File: guessinggame.sh

#total files in dir
total=$(ls -l | wc -l)

#ask the user for a guess
echo "Guess the number of files in the current directory: "
read response

if [[ $response -eq $total ]]
  then
    echo "Correct!"
fi

until [[ $response -eq $total ]]
do
  echo "Hmm. That's wrong. Let's see if I can help."
  if [[ $(( $response - $total )) -gt 5 ]]
  then
    echo "That's too high. Guess lower (at least by 5):"
    read response
  elif [[ $(( $total - $response )) -gt 5 ]]
  then
    echo "That's too low. Guess higher (at least by 5):"
    read response
  elif [[ $(( $response - $total )) -le 5 ]] && [[ $(( $response - $total )) -gt 2 ]]
  then
    echo "Not bad, you are close. Guess lower (at least by 2):"
    read response
  elif [[ $(( $total - $response )) -le 5 ]] && [[ $(( $total - $response )) -gt 2 ]]
  then
    echo "Not bad, you are close. Guess higher (at least by 2):"
    read response
  elif [[ $(( $response - $total )) -le 2 ]] && [[ $(( $response - $total )) -gt 0 ]]
  then
    echo "You are sooo close! Guess a little lower:"
    read response
  elif [[ $(( $total - $response )) -le 2 ]] && [[ $(( $total - $response )) -gt 0 ]]
  then
    echo "You are sooo close! Guess a little higher:"
    read response
  fi
done

echo "You guessed it!"
