#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

DISPLAY() {
  echo "Enter your username:"
  read USERNAME

  USER_ID=$($PSQL "SELECT u_id FROM users WHERE username = '$USERNAME'")

  if [[ -n $USER_ID ]]; then

    USER_INFO=$($PSQL "SELECT username, COUNT(game_id), MIN(guesses) FROM users LEFT JOIN games USING(u_id) WHERE u_id = $USER_ID GROUP BY username")

    IFS='|' read -r DB_USERNAME GAMES_PLAYED BEST_GAME <<< "$USER_INFO"

    if [[ -z $BEST_GAME ]]; then
      BEST_GAME=0
    fi

    echo "Welcome back, $DB_USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."

  else

    echo "Welcome, $USERNAME! It looks like this is your first time here."

    INSERTED_TO_USERS=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")

    USER_ID=$($PSQL "SELECT u_id FROM users WHERE username = '$USERNAME'")

  fi

  GAME
}

GAME() {
  SECRET=$((1 + RANDOM % 1000))
  TRIES=0

  echo "Guess the secret number between 1 and 1000:"

  while true; do
    read GUESS

    if [[ ! $GUESS =~ ^[0-9]+$ ]]; then
      echo "That is not an integer, guess again:"

    elif [[ $SECRET -eq $GUESS ]]; then
      TRIES=$((TRIES + 1))

      echo "You guessed it in $TRIES tries. The secret number was $SECRET. Nice job!"

      INSERTED_TO_GAMES=$($PSQL "INSERT INTO games(u_id, guesses) VALUES($USER_ID, $TRIES)")

      break

    elif [[ $SECRET -gt $GUESS ]]; then
      TRIES=$((TRIES + 1))
      echo "It's higher than that, guess again:"

    else
      TRIES=$((TRIES + 1))
      echo "It's lower than that, guess again:"
    fi
  done
}

DISPLAY
