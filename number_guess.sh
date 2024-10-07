#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=postgres -t --no-align -c"
echo "Enter your username:"
read USERNAME
USERNAME_DB=$($PSQL "SELECT username FROM game_info WHERE username='$USERNAME'" )
if [[ -z $USERNAME_DB ]]
then 
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM game_info WHERE username='$USERNAME'")
  BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses) FROM game_info WHERE username='$USERNAME'")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi
RANDOM=($(shuf -i 1-1000 -n 1))
NUMBER_OF_GUESSES=0
echo "Guess the secret number between 1 and 1000:"
read GUESS

while [[ $GUESS != $RANDOM ]]
do
(( NUMBER_OF_GUESSES++ ))
if [[ $GUESS =~ ^[0-9]+$ ]]
then
  if [[ $GUESS -gt $RANDOM ]]
  then
  echo "It's lower than that, guess again:"
  read GUESS
  elif [[ $GUESS -lt $RANDOM ]]
  then
  echo "It's higher than that, guess again:"
  read GUESS
  fi
else
  echo "That is not an integer, guess again:"
  read GUESS
fi
done
((NUMBER_OF_GUESSES++))

INSERTING_GAME=$($PSQL "INSERT INTO game_info(username, secret_number, number_of_guesses) VALUES('$USERNAME',$RANDOM,$NUMBER_OF_GUESSES)")
echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $RANDOM. Nice job!"
